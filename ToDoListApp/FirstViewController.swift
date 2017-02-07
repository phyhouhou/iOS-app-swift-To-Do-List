//
//  FirstViewController.swift
//  ToDoListApp
//
//  Created by Yanhua Hou on 2/2/17.
//  Copyright © 2017 Alice007. All rights reserved.
//

import UIKit
var list=["Data Science Capstone Project","BaseCamp Intern Application","Learn SQL (HTML, CSS)","Python","Machine Learning Course"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var myTableView: UITableView!
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell=UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text=list[indexPath.row]
        return(cell)
    }
    
   func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
   {
         if editingStyle==UITableViewCellEditingStyle.delete
         {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
         }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // let date=Date()
       // let calendar=Calendar.current
        //let hour=calendar.component(.hour, from: date)
        //let minutes=calendar.component(.minute, from: date)
        //let seconds=calendar.component(.second, from: date)
        //print("\(hour):\(minutes):\(seconds)")
        
        //let day=calendar.component(.day, from: date)
        //let month=calendar.component(.month, from: date)
        //print("\(day).\(month)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

