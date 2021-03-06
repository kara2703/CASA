//
//  PostTableViewCell.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/6/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    let name = UILabel()
    let info = UILabel()
    let title = UILabel()
    let YearGraduation = UILabel()
    let time = UILabel()
    let location = UILabel()
    
//    let request = UILabel()
//    var post_id: Int
//    var name: String
//    var info: String
//    var request: Bool
//    var phone_number: String
//    var timestamp: String
//    var keywords: String
//
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        
        
        name.textAlignment = .center
        name.font = UIFont.systemFont(ofSize: 10)
        name.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(name)
        
//        info.textAlignment = .center
//        info.font = UIFont.systemFont(ofSize: 6)
//        info.translatesAutoresizingMaskIntoConstraints = false
//        contentView.addSubview(info)
//
//        phone_number.textAlignment = .center
//        phone_number.font = UIFont.systemFont(ofSize: 20)
//        phone_number.translatesAutoresizingMaskIntoConstraints = false
//        contentView.addSubview(phone_number)
        
        title.textAlignment = .center
        title.font = UIFont.systemFont(ofSize: 15)
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)
        
        time.textAlignment = .center
        time.font = UIFont.systemFont(ofSize: 10)
        time.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(time)
        
//        
//        timestamp.textAlignment = .left
//        timestamp.font = UIFont.systemFont(ofSize: 20)
//        timestamp.translatesAutoresizingMaskIntoConstraints = false
//        contentView.addSubview(keywords)
        
       // request.text
       // contentView.addSubview(request)
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 27),
//name.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            name.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            name.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            
        ])
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 5),
            title.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            title.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            title.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            
        ])
        
        NSLayoutConstraint.activate([
            time.topAnchor.constraint(equalTo:contentView.topAnchor, constant: 42),
            //time.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            time.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            time.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            
        ])
        
        
        //rather than sview.safelayout use contentView:
        
//        let topPadding: CGFloat = 15.0
//        let sidePadding: CGFloat = 50.0
        
    }
    
    func configure(with postObject: Post) {
        name.text = postObject.name
        info.text = postObject.info
        time.text = postObject.time
        YearGraduation.text = postObject.YearGradutation
        location.text = postObject.location
       // request.text = postObject.request ? "Request": "Offer"
        title.text = postObject.title
        
//        request.text = postObject.hashedPostere
//
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
//        dateFormatter.timeZone = TimeZone(abbreviation: "EST")
//        if let date = dateFormatter.date(from: postObject.timestamp) {
//            dateFormatter.dateFormat = "E, d MMM yyyy h:mm a"
//            timestamp.text = "Posted on \(dateFormatter.string(from: date)) (EST)"
//        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


