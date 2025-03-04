//
//  ViewController.swift
//  MultipageApp
//
//  Created by Dohee Kim on 2025-03-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var gender: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var age: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnPressed(_ sender: UIButton) {
        
        print(gender.text)
        print(firstName.text)
        print(age.value)
        print(datePicker.date)
    }
    
}

