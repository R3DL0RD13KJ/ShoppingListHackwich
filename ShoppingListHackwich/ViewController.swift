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
        var items: [Item] = []
        let item1 = Item(name: "Milk")
        let item2 = Item(name: "Eggs")
        items = [item1, item2]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableViewA.dequeueReusableCell(withIdentifier: "Cellld", for: indexPath)
        let currentItem = items[indexPath.row]
        cell.textLabel?.text = "hello"
        return cell
    }
    
    @IBOutlet weak var tableViewA: UITableView!
    
    @IBOutlet weak var newItemTextfield: UIBarButtonItem!
    
    @IBAction func whenAddItemButtonPressed(_ sender: Any)
    {
        if let newItemName = newItemTextfield
        {
            let newItem = Item(name: newItemName)
            items.append(newItem)
            tableView.reloadData
        }
    }
    
    
    
    
}

