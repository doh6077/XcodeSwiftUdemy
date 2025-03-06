//
//  SecondViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-06.
//

import Foundation

import UIKit

class SecondViewController: UIViewController {
    
    var firstName: String?

    

    @IBOutlet weak var firstNameText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second"
        // Do any additional setup after loading the view.
        firstNameText.text = firstName
        
        
    }

    
}
