//
//  ChildVC1.swift
//  TabBarController
//
//  Created by Apptist Inc. on 2022-02-10.
//

import UIKit

class ChildVC1: UIViewController {
        
    var imgView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView = UIImageView(frame: CGRect(x: view.bounds.width / 2 - view.bounds.width / 4, y: view.bounds.height / 2 - view.bounds.height / 4, width: view.bounds.width / 4, height: view.bounds.height / 4))


        
        self.view.addSubview(imgView!)
        imgView.image = UIImage(named: "Profile")
        
        self.view.backgroundColor = .red

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
