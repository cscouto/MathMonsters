//
//  Monster.swift
//  MathMonsters
//
//  Created by Tiago Do Couto on 12/11/17.
//  Copyright © 2017 Tiago Do Couto. All rights reserved.
//

import UIKit

enum Weapon {
    case blowgun, ninjaStar, fire, sword, smoke
}

class Monster {
    let name: String
    let description: String
    let iconName: String
    let weapon: Weapon
    
    init(name: String, description: String, iconName: String, weapon: Weapon) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.weapon = weapon
    }
    
    var weaponImage: UIImage {
        switch weapon {
        case .blowgun:
            return UIImage(named: "blowgun")!
        case .fire:
            return UIImage(named: "fire")!
        case .ninjaStar:
            return UIImage(named: "ninjastar")!
        case .smoke:
            return UIImage(named: "smoke")!
        case .sword:
            return UIImage(named: "sword")!
        }
    }
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}
