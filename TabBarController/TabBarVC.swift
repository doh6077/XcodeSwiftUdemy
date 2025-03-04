//
//  ViewController.swift
//  TabBarController
//
//  Created by Apptist Inc. on 2022-02-10.
//

import UIKit

class TabBarVC: UITabBarController {
    
    /* MARK: - Tab Bar VC
     - Tab Bar controller allows you to select any item in the tab
     - Add tab bar items
     - Child VC is a child item
     - Child VC 2 is a child item
     
     */
    
    var childVC1 = TableViewController(style: .plain)
    var childVC2 = CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        childVC1.tabBarItem = UITabBarItem(title: "Camera", image: UIImage(named: "Camera"), tag: 0)
        childVC2.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "Profile"), tag: 1)
        
        //Set the view controllers inside the tab bar
        self.viewControllers = [childVC1, childVC2]
        
        self.tabBar.barStyle = .black
        self.tabBar.barTintColor = .black
    }


}

