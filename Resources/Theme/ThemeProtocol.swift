//
//  ThemeProtocol.swift
//  Halanx
//
//  Created by Lakshay Chhabra on 15/07/18.
//  Copyright © 2018 Lakshay Chhabra. All rights reserved.
//

import UIKit

protocol ThemeProtocol {
    
    var mainFontName : String { get }
    var fontColor : UIColor { get }
    var fontColorInDark : UIColor { get }
    var background : UIColor{ get }
    var tint : UIColor { get }
}
