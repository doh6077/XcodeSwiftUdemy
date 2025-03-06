//
//  ThidViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-05.
//

import Foundation

import UIKit

class ThidViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third"
        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        
        print(name.text)
    }
    
}
