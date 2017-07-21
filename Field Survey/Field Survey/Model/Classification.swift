//
//  Classification.swift
//  Field Survey
//
//  Created by Lappy on 7/21/17.
//  Copyright © 2017 xanda code. All rights reserved.
//

import UIKit

enum Classification: String {
    case reptile
    case amphibian
    case bird
    case insect
    case plant
    case mammal
    case fish
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
