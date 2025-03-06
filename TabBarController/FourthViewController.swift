//
//  FourthViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-05.
//

import Foundation

import UIKit

class FourthViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fourth"
        view.backgroundColor = .blue
        
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnPressed(_ sender: UIButton) {
        

        print(datePicker.date)
    }
    
}
