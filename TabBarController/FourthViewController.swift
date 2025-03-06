//
//  FourthViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-05.
//

import Foundation

import UIKit

class FourthViewController: UIViewController {
    var firstName: String?
    var lastName: String?
    var date: String?
    
    @IBOutlet weak var userInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        // Display user info
        let userInfoText = """
                First Name: \(firstName ?? "Not provided")
                Last Name: \(lastName ?? "Not provided")
                Birth Date: \(date ?? "Not Provided")
                """
        userInfo.text = userInfoText
        
    }
    


    
}
