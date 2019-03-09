//
//  protocols.swift
//  protocols and delegates star wars
//
//  Created by The Duke on 3/9/19.
//  Copyright © 2019 The Duke. All rights reserved.
//

import UIKit

/*
- NOTE: the protocol name is anything you want, just be descritive so you know what it is when you're using it
- NOTE: protocols are a type, like an enumeration, so the names follow a first letter capitalized convention
- NOTE: protocols can have both multiple properties and functions but they cannot hold values
- NOTE: with the function, we just delcare the function definition, not the braces, {}, or the code inside the {}

 Here, we're requiring three parameters (think as tasks to be delegated):
 1) the image we want the delegate to tell the receiver to display (the receiver is the one doing all the work that was delegated),
 2) the name we want the receiver to display,
 3) the background color we want the receiver's view to display as.

 */
protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
} // end SideSelectionDelegate

