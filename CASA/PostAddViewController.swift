//
//  PostAddViewController.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/6/21.
//

import UIKit

class PostAddViewController: UIViewController {

    var row : Int!
    var currentPost: Post!
    var CreatePostHere = UILabel()
    var nameLabel = UILabel()
    var nameinput = UITextField()
    var infoLabel = UILabel()
    var infoinput = UITextField()
    var infoTextView = UITextView()
    var anonymousLabel = UILabel()
    var locationLabel = UILabel()
    var locationInput = UITextField()
    var timeLabel = UILabel()
    var timeInput = UITextField()
    var titleLabel = UILabel()
    var titleinput = UITextField()
    var yearLabel = UILabel()
    var yearinput = UITextField()
    var anonymousinput = UISwitch()
    var saveButton = UIButton()
    weak var delegate: TitleDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        view.backgroundColor = UIColor.init(red: 250/255, green: 231/255, blue: 235/255, alpha: 1)
    


        setupViews()
        setupConstraints()
        
        // Do any additional setup after loading the view.
    }
    
    func setupViews(){
        
        CreatePostHere.text = "Create Post Here!"
        CreatePostHere.textAlignment = .center
        CreatePostHere.translatesAutoresizingMaskIntoConstraints = false
        CreatePostHere.font = UIFont.systemFont(ofSize: 30)
        view!.addSubview(CreatePostHere)
        
        
        nameLabel.text = "Name: (if you want to share)"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(nameLabel)
        
        anonymousLabel.text = "If it's anonymous, turn the switch on"
        anonymousLabel.translatesAutoresizingMaskIntoConstraints = false
        anonymousLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(anonymousLabel)
        
        nameinput.placeholder = "  Input Name:"
        nameinput.translatesAutoresizingMaskIntoConstraints = false
        nameinput.layer.cornerRadius = 15
        nameinput.backgroundColor = .white
        view.addSubview(nameinput)
        
        titleLabel.text = "Title:"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(titleLabel)
        
        titleinput.placeholder = "  Input Title for your post:"
        titleinput.translatesAutoresizingMaskIntoConstraints = false
        titleinput.layer.cornerRadius = 15
        titleinput.backgroundColor = .white
        view.addSubview(titleinput)
        
        yearLabel.text = "Year of Graduation:"
        yearLabel.translatesAutoresizingMaskIntoConstraints = false
        yearLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(yearLabel)
        
        yearinput.placeholder = "  Input your graduation year (for. eg: 2024, 2023 etc...):"
        yearinput.translatesAutoresizingMaskIntoConstraints = false
        yearinput.layer.cornerRadius = 15
        yearinput.backgroundColor = .white
        view.addSubview(yearinput)
        
        locationLabel.text = "Location:"
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(locationLabel)
        
        locationInput.placeholder = "  Input where the incident took place:"
        locationInput.translatesAutoresizingMaskIntoConstraints = false
        locationInput.layer.cornerRadius = 15
        locationInput.backgroundColor = .white
        view!.addSubview(locationInput)
        
        infoLabel.text = "What happened? (Describe the incident at your own level of comfort; you can be as liberal or conservative as you want)"
        infoLabel.numberOfLines = 0
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.font = UIFont.systemFont(ofSize: 20)
        infoinput.layer.cornerRadius = 15
        infoinput.backgroundColor = .white
        view!.addSubview(infoLabel)
        
        
        infoinput.placeholder = "  Input description of the incident:"
        infoinput.layer.cornerRadius = 15
        infoinput.backgroundColor = .white
        infoinput.translatesAutoresizingMaskIntoConstraints = false
//        infoinput.numberOfLines = 0
        view!.addSubview(infoinput)
        
        timeLabel.text = "Time of the incident:"
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.font = UIFont.systemFont(ofSize: 20)
        view!.addSubview(timeLabel)
        
        timeInput.placeholder = "  Input time:"
        timeInput.layer.cornerRadius = 15
        timeInput.backgroundColor = .white
        timeInput.translatesAutoresizingMaskIntoConstraints = false
        view!.addSubview(timeInput)
        
        anonymousinput.translatesAutoresizingMaskIntoConstraints = false
        anonymousinput.isOn = true
        anonymousinput.setOn(true, animated: false)
        anonymousinput.addTarget(self, action: #selector(switchValueDidChange(_:)), for: .valueChanged)
        self.view!.addSubview(anonymousinput)
        
        saveButton.setTitle("Save Post", for: .normal)
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
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: titleinput.bottomAnchor, constant: 10),
            locationLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            locationLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            //locationLabel.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
        NSLayoutConstraint.activate([
            locationInput.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 10),
            locationInput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            locationInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            locationInput.heightAnchor.constraint(equalToConstant: 30)
            
        ])
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: locationInput.bottomAnchor, constant: 10),
            infoLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infoLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)

        ])
        

        NSLayoutConstraint.activate([
            infoinput.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 10),
            infoinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infoinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            infoinput.heightAnchor.constraint(equalToConstant: 30),
        ])
        
//
//
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: infoinput.bottomAnchor, constant: 10),
            timeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            timeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            timeInput.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
            timeInput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            timeInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            timeInput.heightAnchor.constraint(equalToConstant: 30),
            
        ])


        NSLayoutConstraint.activate([
            anonymousLabel.topAnchor.constraint(equalTo: timeInput.bottomAnchor, constant: 10),
            anonymousLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            anonymousLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

        ])

        NSLayoutConstraint.activate([
            anonymousinput.topAnchor.constraint(equalTo: anonymousLabel.bottomAnchor, constant: 10),
            anonymousinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            anonymousinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            anonymousinput.heightAnchor.constraint(equalToConstant: 30),

        ])
//
        NSLayoutConstraint.activate([
            yearLabel.topAnchor.constraint(equalTo: anonymousinput.bottomAnchor, constant: 10),
            yearLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            yearLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

        ])

        NSLayoutConstraint.activate([
            yearinput.topAnchor.constraint(equalTo: yearLabel.bottomAnchor, constant: 10),
            yearinput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            yearinput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            yearinput.heightAnchor.constraint(equalToConstant: 30),

        ])
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: yearinput.bottomAnchor, constant: 10),
            saveButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            saveButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            saveButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor,constant: 0),
            saveButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @objc func switchValueDidChange(_ sender: UISwitch!){
//        if (sender.isOn){
//        //print("on")
//     //   requestinput
//        }
//        else{
//       // print("off")
        }
//
    @objc func savePostButtonPressed(){
        let id = 1;
        if let nametext = nameinput.text, let infotext = infoinput.text, let locationtext = locationInput.text, let timetext = timeInput.text, let titletext = titleinput.text, let yeartext = yearinput.text{
            self.delegate?.changeStuff(newPost: Post(id: id, name: nametext, info: infotext, title: titletext, Anonymous: anonymousinput.isOn, YearGradutation: yeartext, location: locationtext, time: timetext))
            
//            self.delegate?.changeStuff(newPost: Post(id: id, name: nametext,info: infotext, title: titletext, request:self.requestinput.isOn, phone_number: phonetext, timestamp: timeStampplaceHolder, keywords: keywordstext))
            self.dismiss(animated: true, completion: nil)
//            NetworkManager.createPost(name: nametext, info: infotext, phone_number: phonetext,request:requestinput.isOn, keywords: keywordstext){data in
//                self.delegate?.updateTable()
//
//        }
        
    }
    }
//    var listOfItems:[String]?=[]
//    @objc func updateList(){
//        var m = ""
//        if let itemtext = infoinput.text{
//            listOfItems?.append(itemtext)
//            for x in listOfItems ?? []{
//                m += x}
//            print(m)
//        return infoTextView.text = m
//        //appending all the items of the array to one string to give as an output

}
