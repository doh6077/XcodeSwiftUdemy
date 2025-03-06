//
//  FirstViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-06.
//

import Foundation

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First Name"
        // Do any additional setup after loading the view.
        
        
    }
    

    @IBAction func submitBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSecond", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // going to be viewcontroller
        if segue.identifier == "goToSecond"{
            // Downcasting
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.firstName = firstName.text
        }
        
    }
}
