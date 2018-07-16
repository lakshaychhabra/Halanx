//
//  MeMainViewController.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 14/07/18.
//  Copyright © 2018 Halanx. All rights reserved.
//

import UIKit

class MeMainViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    let sectionArray = ["MeInfoTableViewCell","MeProfileStrengthTableViewCell",  "MeProfilePicsTitle","PeopleLikeTableViewCell", "MyPostHeadingTableViewCell", "PostTableViewCell" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableViews()
        
    }
    
    func setupTableViews(){
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 80
        
        for sect in sectionArray
        {
           
           registerCellNib(named: sect, with: tableView)
            
        }
    }
    
    
    func registerCellNib(named name: String, with tableView: UITableView)
    {
        let cellNib = UINib(nibName: name, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: name)
    }
    
}

extension MeMainViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section <= 4{
            return 1
        }else{
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MeInfoTableViewCell", for: indexPath) as! MeInfoTableViewCell
            
            return cell
        }
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MeProfileStrengthTableViewCell", for: indexPath) as! MeProfileStrengthTableViewCell
            
            return cell
            
        }
            
        else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleLikeTableViewCell", for: indexPath) as! PeopleLikeTableViewCell
            
            return cell
            
        }
        else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MeProfilePicsTitle", for: indexPath) as! MeProfilePicsTitle
            
            return cell
            
        }
        else if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyPostHeadingTableViewCell", for: indexPath) as! MyPostHeadingTableViewCell
            
            return cell
            
        }
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
            
            return cell
        }
    }
        
        
        
        
    }

