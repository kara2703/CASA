//
//  ViewPost.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/6/21.
//

import Foundation
import UIKit

//TASKS TO DO FOR MIDPOINT:
//WATCH LEC 6 AND COMPLETE THE INFO PLIST THINGY
//ASK HELP ON HOW TO UPDATE STUFF in the table in the ViewController FROM THE ADD BUTTON
//COMPLETE VIEWPOST PAGE WITH ALL THE DELEGATED INFORMATION
//CHANGE THE POSITION OF THE SWITCH ON ADDVIEWCONTROLLER FOR ARNAV




class ViewPost: UIViewController{
    
    var currentPost : Post!
    var row: Int!
    var CreatePostHere = UILabel()
    var nameLabel = UILabel()
    var infoLabel = UILabel()
    var infoTextView = UITextView()
    var AnonymousLabel = UILabel()
    var locationLabel = UILabel()
    var yearGrad = UILabel()
    var timeLabel = UILabel()
    var titleLabel = UILabel()
    var requestinput = UISwitch()
    weak var delegate: TitleDelegate?

    
    init(currentPost: Post){
        super.init(nibName: nil, bundle: nil)
        self.currentPost = currentPost//setting the current song of the view controller to hte current song you pass in
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
            
}
    func setupViews(){
        nameLabel.text = "Name: \(currentPost.name)"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(nameLabel)
 
        titleLabel.text = "Title: \(currentPost.title)"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(titleLabel)
        
        infoTextView.text = "Info: \(currentPost.info)"
        infoTextView.translatesAutoresizingMaskIntoConstraints = false
        infoTextView.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(infoTextView)
        
        locationLabel.text = "Location: \(currentPost.location)"
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(locationLabel)
        
        timeLabel.text = "Time: \(currentPost.time)"
        timeLabel.numberOfLines = 0
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(timeLabel)
        
        yearGrad.text = "Year of Graduation: \(currentPost.YearGradutation)"
        yearGrad.translatesAutoresizingMaskIntoConstraints = false
        yearGrad.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(yearGrad)
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
    //        nameLabel.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor, constant:-200)
            
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

        ])
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            locationLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            locationLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

        ])
        
        
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 10),
            timeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            timeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

        ])
        
        NSLayoutConstraint.activate([
            infoTextView.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
            infoTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infoTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            infoTextView.heightAnchor.constraint(equalToConstant: 100)

        ])
        
        NSLayoutConstraint.activate([
            yearGrad.topAnchor.constraint(equalTo: infoTextView.bottomAnchor, constant: 10),
            yearGrad.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            yearGrad.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            yearGrad.heightAnchor.constraint(equalToConstant: 100)

        ])
        
        
        
        
    }
}
