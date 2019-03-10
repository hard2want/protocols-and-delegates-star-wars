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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    } // end viewDidLoad()
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        
        // here is where the 'doer' of the delegates instructions is performed
        // selectionVC is the identifier we just established
        // selectionDelegate is the identifier we created in the SelectionScreen
        //
        selectionVC.selectionDelegate = self
        
        present(selectionVC, animated: true, completion: nil)
    }// end chooseButtonTapped()
} // end BaseScreenVC {}

// you can extend a class's functionality via extensions
// since we're conforming to the protocol we need the protocol's function that we defined
extension BaseScreen: SideSelectionDelegate {
    
    // when the button is tapped, either imperial or rebel, in the selection screen it is calling this function
    // all the information this function needs to fill the parameter values are passed as the arguments from the selection screen
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color        
    } // end didTapChoice()
} // end extension BaseScreen
