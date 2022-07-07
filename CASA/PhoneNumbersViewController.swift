//
//  PhoneNumbersViewController.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/10/21.
//

import Foundation
import UIKit

class PhoneNumbersViewController: UIViewController{
    let Title = UILabel()
    let infobody = UILabel()
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
        Title.text = "Important Phone Numbers:"
        Title.translatesAutoresizingMaskIntoConstraints = false
        Title.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(Title)
        
        infobody.text = "Cornell Victim Advocacy Program (for students, staff, and faculty: (607) 255-1212, victimadvocate@cornell.edu) \n The professional staff of the Women’s Resource Center: (607) 255-0015, wrc@cornell.edu \n \n The professional staff of the LGBT Resource Center: (607) 254-4987, lgbtrc@cornell.edu \n \n The Faculty and Staff Assistance Program (FSAP) (for faculty, staff and post docs: (607) 255-2673)"
        infobody.translatesAutoresizingMaskIntoConstraints = false
        infobody.font = UIFont.systemFont(ofSize: 15)
        infobody.numberOfLines = 0
        thankyouforusingtheapp.numberOfLines = 0
        view.addSubview(infobody)
        
        //We must send a message across the world that there is no disgrace in being a survivor of sexual violence. The shame is on the aggressor. – Angelina Jolie
      
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
        
        
//        NSLayoutConstraint.activate([
//            thankyouforusingtheapp.topAnchor.constraint(equalTo: infobody.bottomAnchor, constant: 10),
//            thankyouforusingtheapp.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            thankyouforusingtheapp.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
//           
//
//        ])

        
    }
    @objc func pushViewControllerButtonPressed() {
        // TODO 3: create VC to push
        let pushViewController = PhoneNumbersViewController()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(pushViewController, animated: true)
    }
}
