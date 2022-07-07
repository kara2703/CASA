//
//  FeedbackViewController.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/10/21.
//

import UIKit

class FeedbackViewController: UIViewController {

    var row : Int!
    var currentPost: Post!
    var CreatePostHere = UILabel()
    var nameLabel = UILabel()
    var nameinput = UITextField()
    var infoLabel = UILabel()
    var infoinput = UITextField()
    var infoTextView = UITextView()
    var titleLabel = UILabel()
    var titleinput = UITextField()
    var saveButton = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        view.backgroundColor = UIColor.init(red: 250/255, green: 231/255, blue: 235/255, alpha: 1)
    


        setupViews()
        setupConstraints()
        
        // Do any additional setup after loading the view.
    }
    
    func setupViews(){
        
        CreatePostHere.text = "Feedback form"
        CreatePostHere.textAlignment = .center
        CreatePostHere.translatesAutoresizingMaskIntoConstraints = false
        CreatePostHere.font = UIFont.systemFont(ofSize: 30)
        view!.addSubview(CreatePostHere)
        
        
        nameLabel.text = "Name:"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(nameLabel)
        

        nameinput.placeholder = "  Input Name:"
        nameinput.translatesAutoresizingMaskIntoConstraints = false
        nameinput.layer.cornerRadius = 15
        nameinput.backgroundColor = .white
        view.addSubview(nameinput)
        
        titleLabel.text = "Contact details: (optional)"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(titleLabel)
        
        titleinput.placeholder = "  Input any form of contact:"
        titleinput.translatesAutoresizingMaskIntoConstraints = false
        titleinput.layer.cornerRadius = 15
        titleinput.backgroundColor = .white
        view.addSubview(titleinput)
        
//
//        locationLabel.text = "Location:"
//        locationLabel.translatesAutoresizingMaskIntoConstraints = false
//        locationLabel.font = UIFont.systemFont(ofSize: 20)
//        view!.addSubview(locationLabel)
//
//        locationInput.placeholder = "  Input where the incident took place:"
//        locationInput.translatesAutoresizingMaskIntoConstraints = false
//        locationInput.layer.cornerRadius = 15
//        locationInput.backgroundColor = .white
//        view!.addSubview(locationInput)
        
        infoLabel.text = "Comments:"
        infoLabel.numberOfLines = 0
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.font = UIFont.systemFont(ofSize: 20)
        infoinput.layer.cornerRadius = 15
        infoinput.backgroundColor = .white
        view!.addSubview(infoLabel)
        
        
        infoinput.placeholder = "  Input your comments:"
        infoinput.layer.cornerRadius = 15
        infoinput.backgroundColor = .white
        infoinput.translatesAutoresizingMaskIntoConstraints = false
//        infoinput.numberOfLines = 0
        view!.addSubview(infoinput)
        
   
     
        
        saveButton.setTitle("Send Feedback!", for: .normal)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.backgroundColor = UIColor.init(red: 231/255, green: 110/255, blue: 182/255 , alpha: 1)
        saveButton.layer.cornerRadius = 15
        saveButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        saveButton.addTarget(self, action: #selector(savePostButtonPressed), for: .touchUpInside)
        view.addSubview(saveButton)
        }
    
        
        
    
    func setupConstraints(){

        NSLayoutConstraint.activate([
            CreatePostHere.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 10),
            CreatePostHere.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            CreatePostHere.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: CreatePostHere.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            
        ])
        
        NSLayoutConstraint.activate([
            nameinput.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            nameinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            nameinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            nameinput.heightAnchor.constraint(equalToConstant:30)
            
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: nameinput.bottomAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
        ])
        NSLayoutConstraint.activate([
            titleinput.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            titleinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            titleinput.heightAnchor.constraint(equalToConstant: 30)
            
        ])
        
//        NSLayoutConstraint.activate([
//            locationLabel.topAnchor.constraint(equalTo: titleinput.bottomAnchor, constant: 10),
//            locationLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            locationLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            //locationLabel.heightAnchor.constraint(equalToConstant: 40)
//
//        ])
//
//        NSLayoutConstraint.activate([
//            locationInput.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 10),
//            locationInput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            locationInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            locationInput.heightAnchor.constraint(equalToConstant: 30)
//
//        ])
//
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: titleinput.bottomAnchor, constant: 10),
            infoLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infoLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)

        ])
        

        NSLayoutConstraint.activate([
            infoinput.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
            infoinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infoinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            infoinput.heightAnchor.constraint(equalToConstant: 400),
        ])
//
////
////
//        NSLayoutConstraint.activate([
//            timeLabel.topAnchor.constraint(equalTo: infoinput.bottomAnchor, constant: 10),
//            timeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            timeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//        ])
//
//        NSLayoutConstraint.activate([
//            timeInput.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
//            timeInput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            timeInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            timeInput.heightAnchor.constraint(equalToConstant: 30),
//
//        ])
//
//
//        NSLayoutConstraint.activate([
//            anonymousLabel.topAnchor.constraint(equalTo: timeInput.bottomAnchor, constant: 10),
//            anonymousLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            anonymousLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//
//        ])
//
//        NSLayoutConstraint.activate([
//            anonymousinput.topAnchor.constraint(equalTo: anonymousLabel.bottomAnchor, constant: 10),
//            anonymousinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            anonymousinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            anonymousinput.heightAnchor.constraint(equalToConstant: 30),
//
//        ])
////
//        NSLayoutConstraint.activate([
//            yearLabel.topAnchor.constraint(equalTo: anonymousinput.bottomAnchor, constant: 10),
//            yearLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            yearLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//
//        ])
//
//        NSLayoutConstraint.activate([
//            yearinput.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 10),
//            yearinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            yearinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//            yearinput.heightAnchor.constraint(equalToConstant: 30),
//
//        ])
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: infoinput.bottomAnchor, constant: 10),
            saveButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            saveButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor,constant: 0),
            saveButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }


//
    @objc func savePostButtonPressed(){
        self.dismiss(animated: true, completion: nil)
    }
    

}
