//
//  SignInViewController.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 14/07/18.
//  Copyright © 2018 Halanx. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var goButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        goButton.layer.cornerRadius = goButton.frame.size.width/2
        goButton.layer.masksToBounds = true
        self.navigationController?.navigationBar.isHidden = false
    }

    @IBAction func goButtonPresssed(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DashBoard") 
        
        self.present(newViewController, animated: true, completion: nil)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    

}
