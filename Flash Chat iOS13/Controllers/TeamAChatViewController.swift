//
//  TeamAChatViewController.swift
//  Flash Chat iOS13
//
//  Created by vgaur on 7/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class TeamAChatViewController: ChatViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.teamName = K.teamA
        self.navigationItem.title = K.teamA
        title = K.teamA
    }
    
}

