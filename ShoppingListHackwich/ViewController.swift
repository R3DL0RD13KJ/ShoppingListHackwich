//
//  ViewController.swift
//  ShoppingListHackwich
//
//  Created by Kenneth Johnson on 12/17/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    override func viewDidLoad()
    {
        tableViewA.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var items: [Item] = []
    let item1 = Item(name: "Milk")
    let item2 = Item(name: "Eggs")
    var items = [item1, item2]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableViewA.dequeueReusableCell(withIdentifier: "Cellld", for: indexPath)
        cell.textLabel?.text = "hello"
        return cell
    }
    
    @IBOutlet weak var tableViewA: UITableView!
    
    
    
    
}

