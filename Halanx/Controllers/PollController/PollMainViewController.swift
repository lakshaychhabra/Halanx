//
//  PollMainViewController.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 14/07/18.
//  Copyright © 2018 Halanx. All rights reserved.
//

import UIKit
import Contacts

class PollMainViewController: UIViewController {

    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    
    
    var contactArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchContacts()
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }

    func fetchContacts(){
        
        let store = CNContactStore()
        
        store.requestAccess(for: .contacts) { (granted, err) in
            
            if let err = err {
                print("Failed to load contacts" , err)
                return
            }
            if granted {
                print("Permission granted to access contacts")
                let keys = [CNContactGivenNameKey, CNContactFamilyNameKey]
                let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
                do {
                    try store.enumerateContacts(with: request, usingBlock: { (contacts, stopPointerIfYouWantToStopEnumerating) in
                        
                        print(contacts.givenName)
                        if contacts.givenName == ""{
                            
                        }
                        else{
                             self.contactArray.append("\(contacts.givenName) \(contacts.familyName)")
                        }
                        
                        
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    })
                }
                catch let err {
                    print("Failed to Enumerate Contacts", err)
                    
                }
              
                
            }else{
                print("Access to contacts denied")
            }
            
        }
        tableView.reloadData()
        
    }

}

extension PollMainViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell")
        contactArray.sort()
        cell?.textLabel?.text = contactArray[indexPath.row]
        return cell!
    }
    
    
}


