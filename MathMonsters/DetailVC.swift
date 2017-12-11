//
//  DetailVC.swift
//  MathMonsters
//
//  Created by Tiago Do Couto on 12/11/17.
//  Copyright © 2017 Tiago Do Couto. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var weaponImageView: UIImageView!
    
    var monster: Monster? {
        didSet {
            refreshUI()
        }
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text = monster?.name
        descriptionLabel.text = monster?.description
        iconImageView.image = monster?.icon
        weaponImageView.image = monster?.weaponImage
    }

}
