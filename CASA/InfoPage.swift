//
//  InfoPage.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/10/21.
//

import Foundation
import UIKit


class InfoPage: UIViewController{
    
    let Title = UILabel()
    let infobody = UILabel()
    let infobody2 = UILabel()
    let infobody3 = UILabel()
    let infobody4 = UILabel()
    let infobody5 = UILabel()
    let infobody6 = UILabel()
    let infobody7 = UILabel()
    let infobody8 = UILabel()
    let phonenumbersButton = UIButton()
    let thankyouforusingtheapp = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
        self.navigationController?.isNavigationBarHidden = false
}
    func setupViews(){
        Title.text = "More information!"
        Title.textAlignment = .center
        Title.backgroundColor = .systemPink
        Title.translatesAutoresizingMaskIntoConstraints = false
        Title.font = UIFont.systemFont(ofSize: 30)
        view.addSubview(Title)
        
        infobody.text = "Cornell University is committed to providing a safe, inclusive, and respectful learning, living, and working environment for its students, faculty, and staff and does not discriminate on the basis of protected status, including sex, in the education programs and activities it operates. Admission and employment are included in the requirement not to discriminate in the education program or activity that Cornell University operates. To this end, through this policy, the university provides means to address bias, discrimination, harassment, and sexual and related misconduct. (Policy 6.4)"
        infobody.translatesAutoresizingMaskIntoConstraints = false
        infobody.font = UIFont.systemFont(ofSize: 15)
        infobody2.numberOfLines = 0
        infobody3.numberOfLines = 0
        infobody4.numberOfLines = 0
        infobody5.numberOfLines = 0
        infobody.numberOfLines = 0
        thankyouforusingtheapp.numberOfLines = 0
        view.addSubview(infobody)
        
        infobody2.text = "Policy 6.3: Consensual Relationships Romantic or sexual relationships between faculty members or others in positions of authority over students and postgraduates (as defined by this policy) are prohibited whenever those relationships have the potential to interfere with an individual’s right or ability to pursue academic, training, research or professional interests."
        infobody2.translatesAutoresizingMaskIntoConstraints = false
        infobody2.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(infobody2)
        
        infobody3.text = "Somethings to remember:"
        infobody3.translatesAutoresizingMaskIntoConstraints = false
        infobody3.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)
        view.addSubview(infobody3)
        
        infobody4.text = "It's not consent if you were afraid to say no."
        infobody4.translatesAutoresizingMaskIntoConstraints = false
        infobody4.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 15)
        view.addSubview(infobody4)
        
        infobody5.text = "https://titleix.cornell.edu/reporting/cornell/"
        infobody5.translatesAutoresizingMaskIntoConstraints = false
        infobody5.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 15)
        infobody5.textAlignment = .center
        infobody3.textAlignment = .center
        infobody4.textAlignment = .center
        view.addSubview(infobody5)
        
        thankyouforusingtheapp.text = "Thank you for using the app!"
        thankyouforusingtheapp.translatesAutoresizingMaskIntoConstraints = false
        thankyouforusingtheapp.textAlignment = .center
        thankyouforusingtheapp.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)
        view.addSubview(thankyouforusingtheapp)
        
        //We must send a message across the world that there is no disgrace in being a survivor of sexual violence. The shame is on the aggressor. – Angelina Jolie
            
        phonenumbersButton.translatesAutoresizingMaskIntoConstraints = false
        phonenumbersButton.setTitle("Details about phone numbers", for: .normal)
        phonenumbersButton.backgroundColor = UIColor.init(red: 193/255, green: 159/255, blue: 180/255, alpha: 1)
        phonenumbersButton.addTarget(self, action: #selector(pushViewControllerButtonPressed), for: .touchUpInside)
        view.addSubview(phonenumbersButton)
      
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            Title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            Title.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            Title.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
    //        nameLabel.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor, constant:-200)
            
        ])
        
        NSLayoutConstraint.activate([
            infobody.topAnchor.constraint(equalTo: Title.bottomAnchor, constant: 10),
            infobody.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infobody.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           

        ])
        NSLayoutConstraint.activate([
            infobody2.topAnchor.constraint(equalTo: infobody.bottomAnchor, constant: 10),
            infobody2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infobody2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           

        ])
        NSLayoutConstraint.activate([
            infobody3.topAnchor.constraint(equalTo: infobody2.bottomAnchor, constant: 10),
            infobody3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infobody3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            infobody4.topAnchor.constraint(equalTo: infobody3.bottomAnchor, constant: 10),
            infobody4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infobody4.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           

        ])
        NSLayoutConstraint.activate([
            infobody5.topAnchor.constraint(equalTo: infobody4.bottomAnchor, constant: 10),
            infobody5.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            infobody5.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           

        ])
        NSLayoutConstraint.activate([
            phonenumbersButton.topAnchor.constraint(equalTo: infobody5.bottomAnchor, constant: 10),
            phonenumbersButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            phonenumbersButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           

        ])

        NSLayoutConstraint.activate([
            thankyouforusingtheapp.topAnchor.constraint(equalTo: phonenumbersButton.bottomAnchor, constant: 10),
            thankyouforusingtheapp.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            thankyouforusingtheapp.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
           

        ])

        
    }
    @objc func pushViewControllerButtonPressed() {
        // TODO 3: create VC to push
        let pushViewController = PhoneNumbersViewController()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(pushViewController, animated: true)
    }
}
