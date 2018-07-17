//
//  FeedMainViewController.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 14/07/18.
//  Copyright © 2018 Halanx. All rights reserved.
//

import UIKit

class FeedMainViewController: UIViewController {

    let sectionArray = ["FeedHeaderTableViewCell", "PostTableViewCell" ]
    
    @IBOutlet var tableView: UITableView!
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

extension FeedMainViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section < 1{
            return 1
        }else{
            return 7
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeedHeaderTableViewCell", for: indexPath) as! FeedHeaderTableViewCell
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
            
            return cell
        }
    }
    

}
