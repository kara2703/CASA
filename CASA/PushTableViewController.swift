//
//  PushTableViewController.swift
//  CASA
//
//  Created by Anoushka Kabra on 5/6/21.
//

import UIKit



protocol TitleDelegate: class {
    func changeStuff(newPost: Post)
    func updateTable()

    }

class PushTableViewController: UIViewController, TitleDelegate{
        
    func changeStuff(newPost: Post){
        postData.append(newPost)
        
        print(postData)
        postTableView.reloadData()
        
            }
        
    func updateTable() {
        refreshData()
        postTableView.reloadData()
        }
    //this is where the table of posts will be presented
    let postTableView = UITableView()
    let filterPostButton = UIBarButtonItem()
    let addPostButton = UIBarButtonItem()
    let postReuseIdentifier = "postReuseIdentifier"
    let makepostButton = UIButton()
    let searchBar = UISearchBar()
    var deleteCellIndexPath: NSIndexPath? = nil
        
    var refreshControl = UIRefreshControl()

    let createAlert = UIAlertController(title: "Add new post", message: nil, preferredStyle: .alert)
    let filterAlert = UIAlertController(title: "Filter poster's posts", message: nil, preferredStyle: .alert)
    let updateAlert = UIAlertController(title: "Update your post", message: nil, preferredStyle: .alert)
        
        

    var postData: [Post] = []
    //    var shownPostData: [Post] = [] // Unlike in lecture, it would be a good idea to leave this here because we filter and so we need to maintain our original data in postData
        
        // MARK: Variables
    var currentIndexPathToUpdate: IndexPath? // We use this for updating and deleting
     

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "All Posts!"
        self.navigationController?.isNavigationBarHidden = false
        view.backgroundColor = UIColor.init(red: 248/255, green: 175/255, blue: 193/255, alpha: 1)
        self.refreshData()
        createDummyData()
        setupViews()
        setupConstraints()
        }
        func createDummyData(){
        let post1 = Post(id: 1, name: "N/A", info: "Yesterday night, i went to (frat name), and the senior brother pulled me up the stairs while I was drunk and kissed me without my consent. My friends found me at the bottom of the bed and helped me out of there", title: "AVOID <FRAT NAME>", Anonymous: true, YearGradutation: "2022", location: "<FRAT NAME>", time: "23rd April, 2021, around 11pm")
        let post2 = Post(id: 3, name: "Jessica", info: "Donlon lobby is the worst on Friday nights", title: "donlon friday nights", Anonymous: false, YearGradutation: "2024", location: "Donlon Hall", time: "23rd April, 2021, around 11pm")
        let post3 = Post(id: 4, name: "N/A", info: "Hard pass on men who think they can woe a girl by touching her waist when she is far out drunk", title: "Have you heard of consent?", Anonymous: true, YearGradutation: "2021", location: "<FRAT NAME>", time: "23rd April, 2021, around 11pm")
                
        postData = [post1, post2, post3]
        }
            
    func sortPostData() {
        postData.sort { (leftPost, rightPost) -> Bool in
            return leftPost.id > rightPost.id
        }}
        
    func setupViews(){
        if #available(iOS 10.0, *) {
            postTableView.refreshControl = refreshControl
        } else {
            postTableView.addSubview(refreshControl)
        }
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)
            
            postTableView.delegate = self
            postTableView.dataSource = self
            postTableView.translatesAutoresizingMaskIntoConstraints = false
            postTableView.backgroundColor = .white
            postTableView.register(PostTableViewCell.self, forCellReuseIdentifier: postReuseIdentifier)
            view.addSubview(postTableView)
            
            filterPostButton.title = "Filter"
            filterPostButton.target = self
            filterPostButton.action = #selector(prepareFilteringAction)
           // navigationItem.leftBarButtonItem = filterPostButton
            
            addPostButton.title = "Add"
            addPostButton.target = self
            addPostButton.action = #selector(presentViewControllerButtonPressed)
            navigationItem.rightBarButtonItem = addPostButton
            
            searchBar.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(searchBar)
            
            
        }
        
        func setupConstraints(){
            NSLayoutConstraint.activate([
                postTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
                postTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
                postTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
                postTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            ])

            NSLayoutConstraint.activate([
            
            ])
            NSLayoutConstraint.activate([
                searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
                searchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
                searchBar.widthAnchor.constraint(equalToConstant: 250)
            ])
            
            
            
    //        NSLayoutConstraint.activate([
    //            makepostButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
    //            makepostButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
    //            makepostButton.widthAnchor.constraint(equalToConstant: 250)
    //        ])
        }
        
        @objc func refreshData() {
            // MARK: Use getAllPosts
    //        NetworkManager.getAllPosts { postList in
    //            self.postData = postList
    //        }
            
            self.refreshControl.endRefreshing()
        }

        @objc func prepareFilteringAction() {
            if filterPostButton.title == "Filter" {
                present(filterAlert, animated: true)
            } else {
                filterPostButton.title = "Filter"
               // shownPostData = postData
            }
        }
        
        @objc func presentCreateAlert() {
            present(createAlert, animated: true)
        }
        
//        @objc func pushViewControllerButtonPressed() {
//            // TODO 3: create VC to push
//            let pushViewController = PushTableViewController()
//            self.present(pushViewController, animated: true, completion: nil)
//            self.navigationController?.isNavigationBarHidden = false
//            self.navigationController?.setNavigationBarHidden(true, animated: true)
//            navigationController?.pushViewController(pushViewController, animated: true)
//        }
//
        @objc func presentViewControllerButtonPressed() {
            let presentViewController = PostAddViewController()
            presentViewController.delegate = self
            self.present(presentViewController, animated: true, completion: nil)



    }
    }

extension PushTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           // updateAlert.textFields?[0].text = postData[indexPath.row].info
        currentIndexPathToUpdate = indexPath
        let currentPost = postData[indexPath.row]
        present(ViewPost(currentPost: currentPost), animated: true)
        
        
        }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            postData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
 }
    }}
        



extension PushTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postData.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: postReuseIdentifier, for: indexPath) as! PostTableViewCell
        let postObject = postData[indexPath.row]
        cell.configure(with: postObject)
        return cell
        }
    }


