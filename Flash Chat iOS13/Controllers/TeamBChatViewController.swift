//
//  TeamBChatViewController.swift
//  Flash Chat iOS13
//
//  Created by vgaur on 7/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class TeamBChatViewController: ChatViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.teamName = K.teamB
        //self.tabBarController?.navigationItem.title = K.teamB
        //navigationController?.navigationBar.topItem?.title = K.teamB
        self.navigationItem.title = K.teamB
        self.title = K.teamB
    }
}
