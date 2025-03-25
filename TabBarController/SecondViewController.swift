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

    @IBOutlet weak var lastName: UITextField!
    

    @IBOutlet weak var firstNameText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstNameText.text = firstName
        
        
    }

    
    @IBAction func submitBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToThird", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // going to be viewcontroller
        if segue.identifier == "goToThird"{
            // Downcasting
            let destinationVC = segue.destination as! ThidViewController
            
            destinationVC.lastName = lastName.text
            destinationVC.firstName = firstName
        }
    }
}
