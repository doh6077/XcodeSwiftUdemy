//
//  ChildVC3.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-05.
//

import Foundation
import UIKit

class ChildVC3: UIViewController {
    
    var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView = UIImageView(frame: CGRect(x: view.bounds.width / 2 - view.bounds.width / 4, y: view.bounds.height / 2 - view.bounds.height / 4, width: view.bounds.width / 4, height: view.bounds.height / 4))
        
        
        
        self.view.addSubview(imgView!)
        imgView.image = UIImage(named: "Profile")
        
        self.view.backgroundColor = .red
        
        // Do any additional setup after loading the view.
    }
}
