//
//  ThidViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-05.
//

import Foundation

import UIKit

class ThidViewController: UIViewController {

    @IBOutlet weak var lastNameText: UITextView!
    
    var firstName: String?
    var lastName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        lastNameText.text = lastName


        
    }
    

    
}
