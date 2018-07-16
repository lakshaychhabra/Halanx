//
//  StartUpScreen.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 14/07/18.
//  Copyright © 2018 Halanx. All rights reserved.
//

import UIKit

class StartUpScreen: UIViewController, UITextFieldDelegate {
    
@IBOutlet var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            continueButton.layer.borderColor = UIColor.red.cgColor
            continueButton.layer.borderWidth = 1
        self.navigationController?.navigationBar.isHidden = true
       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.navigationBar.isHidden = true
    }

    
    

}
