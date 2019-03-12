//
//  BaseScreen.swift
//  protocols and delegates star wars
//
//  Created by The Duke on 3/9/19.
//  Copyright © 2019 The Duke. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!

    // set up your observers for the notification
    let light = Notification.Name(rawValue: lightNotificationKey)
    let dark = Notification.Name(rawValue: darkNotificationKey)
    
    // to housekeep your memory you deinitialize your observers when done
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
        // create your notification observers
        createObservers()
    } // end viewDidLoad()
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        present(selectionVC, animated: true, completion: nil)
    }// end chooseButtonTapped()
    
    
    func createObservers(){
        //light
        NotificationCenter.default.addObserver(self, selector: #selector(BaseScreen.updateCharacterImage(notification:)), name: light, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BaseScreen.updateNameLabel(notification:)), name: light, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BaseScreen.updateBackground(notification:)), name: light, object: nil)
        
        // dark
        NotificationCenter.default.addObserver(self, selector: #selector(BaseScreen.updateCharacterImage(notification:)), name: dark, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BaseScreen.updateNameLabel(notification:)), name: dark, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BaseScreen.updateBackground(notification:)), name: dark, object: nil)

    } // end createObservers()
    
    //
    @objc func updateCharacterImage(notification: NSNotification){
        // if notification.name is light then isLight will be true, otherwise false
        let isLight = notification.name == light
        
        // if isLight is true, then set image to yoda, otherwise set to darth
        let image = isLight ? UIImage(named: "yoda")! : UIImage(named: "darth")!
        
        // assign the image to the mainImageView's image property
        mainImageView.image = image
    } // end updateCharacterImage()

    @objc func updateNameLabel(notification: NSNotification){
        let isLight = notification.name == light
        let name = isLight ? "Yoda" : "Darth Vader"
        nameLabel.text = name
    } // end updateCharacterImage()

@objc func updateBackground(notification: NSNotification){
        let isLight = notification.name == light
        let color = isLight ? UIColor.cyan : UIColor.red
        view.backgroundColor = color
    } // end updateCharacterImage()
    
    
} // end BaseScreenVC {}
