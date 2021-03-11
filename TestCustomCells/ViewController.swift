//
//  ViewController.swift
//  TestCustomCells
//
//  Created by Fidan Oruc on 3/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
     var heroes = [
        "Captain America",
        "Scarlet Witch",
        "Black Widow",
        "Black Panter",
        "Thor",
        "Captain Marvel",
        "Doctor Strange"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    //TableView funcs
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return print("you selected me")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.myLabel?.text = heroes[indexPath.row]
        cell.myImage.backgroundColor = .red
        
        //cell.textLabel?.text = heroes[indexPath.row]
        return cell
    }

}

