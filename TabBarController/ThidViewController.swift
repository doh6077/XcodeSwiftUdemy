//
//  ThidViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-05.
//

import Foundation

import UIKit

class ThidViewController: UIViewController {


    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var lastNameText: UITextView!
    
    var firstName: String?
    var lastName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        lastNameText.text = lastName


        
    }
    

    @IBAction func birthBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToFourth", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // going to be viewcontroller
        if segue.identifier == "goToFourth"{
            // Downcasting
            let destinationVC = segue.destination as! FourthViewController
            
            destinationVC.lastName = lastName
            destinationVC.firstName = firstName
            destinationVC.date = date.text
        }
    }
}
