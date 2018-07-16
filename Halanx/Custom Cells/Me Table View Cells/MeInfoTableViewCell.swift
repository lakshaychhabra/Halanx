//
//  MeInfoTableViewCell.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 15/07/18.
//  Copyright © 2018 Halanx. All rights reserved.
//

import UIKit

class MeInfoTableViewCell: UITableViewCell {

    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func editButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func optionButtonPressed(_ sender: Any) {
    }
    
}
