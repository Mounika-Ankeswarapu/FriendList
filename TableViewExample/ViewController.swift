//
//  ViewController.swift
//  TableViewExample
//
//  Created by Mounika Ankeswarapu on 17/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [
    FriendList(name: "Angel", image: "Angel"),
    FriendList(name: "David", image: "David"),
    FriendList(name: "Esther", image: "Esther"),
    FriendList(name: "John", image: "John"),
    FriendList(name: "Jonathan", image: "Jonathan"),
    FriendList(name: "Ruth", image: "Ruth"),
    FriendList(name: "Sam", image: "Sam"),
    FriendList(name: "Susan", image: "Susan")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "customCell")
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
        cell.avatarImg.image = UIImage(named: data[indexPath.row].image)
        cell.nameLbl.text = data[indexPath.row].name
        
        return cell
    }
    
    
}

struct FriendList : Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
}
