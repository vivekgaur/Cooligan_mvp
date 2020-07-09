//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase
import SpriteKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let db = Firestore.firestore()
    
    var messages: [Message] = []
    var teamName: String = ""
    
    // Sprite Kit Scene
    private lazy var animationView = SKView()
    
    init(name:String) {
        self.teamName = name
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.teamName = ""
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        //title = K.appName
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        loadMessages()
        
        
    }
    
    func loadMessages() {
        
        db.collection(K.FStore.collectionName)
            .order(by: K.FStore.dateField)
            .addSnapshotListener { (querySnapshot, error) in
            
            self.messages = []
            
            if let e = error {
                print("There was an issue retrieving data from Firestore. \(e)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        let data = doc.data()
                        if let messageSender = data[K.FStore.senderField] as? String, let messageBody = data[K.FStore.bodyField] as? String {
                            let newMessage = Message(sender: messageSender, body: messageBody)
                            self.messages.append(newMessage)
                            
                            DispatchQueue.main.async {
                                   self.tableView.reloadData()
                                let indexPath = IndexPath(row: self.messages.count - 1, section: 0)
                                self.tableView.scrollToRow(at: indexPath, at: .top, animated: false)
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
        if let messageBody = messageTextfield.text, let messageSender = Auth.auth().currentUser?.email {
            db.collection(K.FStore.collectionName).addDocument(data: [
                K.FStore.senderField: messageSender,
                K.FStore.bodyField: messageBody,
                K.FStore.dateField: Date().timeIntervalSince1970
            ]) { (error) in
                if let e = error {
                    print("There was an issue saving data to firestore, \(e)")
                } else {
                    print("Successfully saved data.")
                    
                    DispatchQueue.main.async {
                         self.messageTextfield.text = ""
                    }
                }
            }
        }
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
    }
}

extension ChatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        if (message.sender != Auth.auth().currentUser?.email && teamName == K.teamA) || (message.sender == Auth.auth().currentUser?.email && teamName == K.teamB) {
            
            // hide these messages
            cell.label.text = ""
//            cell.rightImageView.isHidden = true
//            cell.leftImageView.isHidden = true
//            cell.messageBubble.isHidden = true
            return cell
        }
        
        cell.label.text = message.body
        
        //This is a message from the current user.
//        if message.sender == Auth.auth().currentUser?.email {
        if message.sender == Auth.auth().currentUser?.email {
            cell.leftImageView.isHidden = true
            cell.rightImageView.isHidden = false
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
            cell.label.textColor = UIColor(named: K.BrandColors.purple)
        }
        //This is a message from another sender.
        else {
            cell.leftImageView.isHidden = false
            cell.rightImageView.isHidden = true
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.purple)
            cell.label.textColor = UIColor(named: K.BrandColors.lightPurple)
            startScene()
        }
       
        return cell
    }
    
}

extension ChatViewController {
    override func loadView() {
        super.loadView()
        view.addSubview(animationView)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Make sure we don't recreate the scene when the view re-appears
        guard animationView.scene == nil else {
            return
        }
        view.addSubview(animationView)
        animationView.allowsTransparency = true
        animationView.backgroundColor = .clear
        //startScene()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        animationView.center.x = view.bounds.midX
        animationView.center.y = view.bounds.midY
    }
}

// MARK: Sprite Kit Emoji animation
extension ChatViewController {
    
    func startScene() {
        let scene = makeScene()
        animationView.frame.size = scene.size
        animationView.presentScene(scene)
    }
    
    func makeScene() -> SKScene {
        let minimumDimension = min(view.frame.width, view.frame.height)
        let size = CGSize(width: minimumDimension, height: minimumDimension)

        let scene = SKScene(size: size)
        scene.backgroundColor = .clear
        addEmoji(to: scene)
        animateNodes(scene.children)
        return scene
    }
    
    func addEmoji(to scene: SKScene) {
        let allEmoji: [Character] = ["🐸", "🐙", "🐒", "🕷"]
        let distance = floor(scene.size.width / 4)

        for rowIndex in 1...3 {
        for (index, emoji) in allEmoji.enumerated() {
            let node = SKLabelNode()
            node.renderEmoji(emoji)
            node.position.y = floor(scene.size.height / CGFloat(rowIndex))
            node.position.x = distance * (CGFloat(index) + 0.5)
            scene.addChild(node)
        }
        }
    }
    
    func animateNodes(_ nodes: [SKNode]) {
        for (index, node) in nodes.enumerated() {
            print("Adding Emoji \(node)")
            node.run(.sequence([
                .wait(forDuration: TimeInterval(index) * 0.2),
                .repeatForever(.sequence([
                    .scale(to: 1.5, duration: 0.3),
                    .scale(to: 1, duration: 0.3),
                    .wait(forDuration: 2)
                ]))
            ]))
        }
    }
}

// MARK: SKLable

extension SKLabelNode {
    func renderEmoji(_ emoji: Character) {
        fontSize = 50
        text = String(emoji)

        // This enables us to move the label using its center point
        verticalAlignmentMode = .center
        horizontalAlignmentMode = .center
    }
}

