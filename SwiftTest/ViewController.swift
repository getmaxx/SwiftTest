//
//  ViewController.swift
//  SwiftTest
//
//  Created by Igor Vedeneev on 29.05.16.
//  Copyright © 2016 Igor Vedeneev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataSource: [IVPerson] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fillDataSource()
    }
    
    
    // MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.dataSource.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let reuseIdentifier = "cell"
        
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as UITableViewCell?
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
        }
        
        let person = self.dataSource[indexPath.row]
        
        
        cell!.textLabel?.text = "\(person.firstName as! String) \(person.lastName as! String)"
        cell!.detailTextLabel?.text = "\(person.age) лет"
        cell!.imageView?.image = UIImage(named: "avatar1")

        return cell!
    }
    
    
    // MARK: Private
    
    func fillDataSource() -> Void {
        let array = NSMutableArray()
        
        var i = 0
        
        while (i < 10) {
            let person = IVPerson(firstName: "Vika", lastName: "Khanina", age: 20, info: "Lublu?", avararLink: "http://google.com")
            
            array.addObject(person)
            i += 1
        }
        
        self.dataSource = array.copy() as! [IVPerson]
        
        self.tableView.reloadData()
    }
}
