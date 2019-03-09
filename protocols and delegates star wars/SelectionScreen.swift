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
        
          } // end imperialButtonTapped()
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    } // end rebelButtonTapped()
} // end SelectionScreen{}
