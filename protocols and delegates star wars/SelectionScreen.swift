//
//  SelectionScreen.swift
//  protocols and delegates star wars
//
//  Created by The Duke on 3/9/19.
//  Copyright © 2019 The Duke. All rights reserved.
//

import UIKit

class SelectionScreen: UIViewController {

    // create a delegate identifier of the specific protocol type
    // this identifier is who you're delegating the task to
    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    } // end viewDidLoad()
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        // selectionDelegate is who is going to receive the instructions
        // didTapChoice() is the function required via the protocol we created
        // pass in the desired values for the arguement requirements
        // NOTE: you can force unwrap the image because you 100% know it is in your assets folder, but if pulling image from the web that link may not always work so you would use a conditional
        selectionDelegate.didTapChoice(image: UIImage(named: "darth")!, name: "Darth Vader", color: .red)
          } // end imperialButtonTapped()
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        selectionDelegate.didTapChoice(image: UIImage(named: "yoda")!, name: "Yoda", color: .cyan)
    } // end rebelButtonTapped()
} // end SelectionScreen{}
