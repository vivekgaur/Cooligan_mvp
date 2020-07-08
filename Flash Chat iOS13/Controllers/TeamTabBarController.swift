//
//  TeamTabBarController.swift
//  Flash Chat iOS13
//
//  Created by vgaur on 7/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class TeamTabBarController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func LogOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
    }
}
