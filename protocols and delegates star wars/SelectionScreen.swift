//
//  SelectionScreen.swift
//  protocols and delegates star wars
//
//  Created by The Duke on 3/9/19.
//  Copyright © 2019 The Duke. All rights reserved.
//

import UIKit

class SelectionScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    } // end viewDidLoad()
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        // create an indentifier to store the value from your identifier that holds the notification name
        let name = Notification.Name(rawValue: darkNotificationKey)
 
        // setup your notification, the .post is broadcasting the signal to any observers
        // object is nil because we're not passing anything in this example
        NotificationCenter.default.post(name: name, object: nil)
        
        dismiss(animated: true, completion: nil)
    } // end imperialButtonTapped()
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        // create an indentifier to store the value from your identifier that holds the notification name
        let name = Notification.Name(rawValue: lightNotificationKey)
        
        // setup your notification, the .post is broadcasting the signal to any observers
        // object is nil because we're not passing anything in this example
        NotificationCenter.default.post(name: name, object: nil)

        dismiss(animated: true, completion: nil)
    } // end rebelButtonTapped()
} // end SelectionScreen{}
