//
//  ViewController.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/6/21.
//

import UIKit

class ViewController: UIViewController {

    let WelcomeText = UILabel()
    let appInfo = UILabel()
    let makePostButton = UIButton()
    let resourcesButton = UIButton()
    let feedbackButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        WelcomeText.text = "Welcome to CASA (Cornellians Against Sexual Assault)!"
        WelcomeText.font = UIFont.systemFont(ofSize: 30)
        WelcomeText.backgroundColor = .systemPink
        WelcomeText.textAlignment = .center
        WelcomeText.numberOfLines = 0
        WelcomeText.textColor = .white
        WelcomeText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(WelcomeText)
        
        appInfo.text = "This application allows you to make posts for sexual harassment incidents that took place at Cornell, or otherwise, in order to vent your anger and make our community more aware about fucktards who do not understand boundaries! "
        appInfo.font = UIFont.systemFont(ofSize: 15)
        appInfo.textColor = .black
        appInfo.numberOfLines = 0
        appInfo.textAlignment = .center
        appInfo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(appInfo)
        
        makePostButton.translatesAutoresizingMaskIntoConstraints = false
        makePostButton.setTitle("Make a post!", for: .normal)
        makePostButton.backgroundColor = UIColor.init(red: 211/255, green: 124/255, blue: 145/255, alpha: 1)
        makePostButton.addTarget(self, action: #selector(pushViewControllerButtonPressed), for: .touchUpInside)
        makePostButton.layer.cornerRadius = 15
        view.addSubview(makePostButton)
        
        resourcesButton.translatesAutoresizingMaskIntoConstraints = false
        resourcesButton.setTitle("Resources for you", for: .normal)
        resourcesButton.backgroundColor = UIColor.init(red: 211/255, green: 124/255, blue: 145/255, alpha: 1)
        resourcesButton.addTarget(self, action: #selector(InfoPageControllerButtonPressed), for: .touchUpInside)
        resourcesButton.layer.cornerRadius = 15
        view.addSubview(resourcesButton)
        
        feedbackButton.translatesAutoresizingMaskIntoConstraints = false
        feedbackButton.setTitle("Any Feedback?", for: .normal)
        feedbackButton.backgroundColor = UIColor.init(red: 211/255, green: 124/255, blue: 145/255, alpha: 1)
        feedbackButton.layer.cornerRadius = 15
        feedbackButton.addTarget(self, action: #selector(FeedbackbuttonPressed), for: .touchUpInside)
        view.addSubview(feedbackButton)
        
        
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            WelcomeText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            //WelcomeText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            WelcomeText.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            WelcomeText.widthAnchor.constraint(equalToConstant: 280)
            
        ])
        
        NSLayoutConstraint.activate([
            appInfo.topAnchor.constraint(equalTo: WelcomeText.bottomAnchor, constant:10),
            //WelcomeText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            appInfo.heightAnchor.constraint(equalToConstant: 100),
            appInfo.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            appInfo.widthAnchor.constraint(equalToConstant: 280),
          //  appInfo.heightAnchor.constraint(equalToConstant: 500)

        ])

        NSLayoutConstraint.activate([
            makePostButton.topAnchor.constraint(equalTo:appInfo.bottomAnchor, constant: 50),
            //WelcomeText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            makePostButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            makePostButton.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            resourcesButton.topAnchor.constraint(equalTo:makePostButton.bottomAnchor, constant: 15),
            //WelcomeText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            resourcesButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            resourcesButton.widthAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            feedbackButton.topAnchor.constraint(equalTo:resourcesButton.bottomAnchor, constant: 15),
            //WelcomeText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            feedbackButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            feedbackButton.widthAnchor.constraint(equalToConstant: 250)
        ])
        
    }
    @objc func pushViewControllerButtonPressed() {
        // TODO 3: create VC to push
        let pushViewController = PushTableViewController()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(pushViewController, animated: true)
    }
    @objc func InfoPageControllerButtonPressed() {
        // TODO 3: create VC to push
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(InfoPage(), animated: true)
    }
    
    @objc func FeedbackbuttonPressed() {
        // TODO 3: create VC to push
        
        let presentViewController = FeedbackViewController()
        //presentViewController.delegate = self
        self.present(presentViewController, animated: true, completion: nil)

    }
    
}


