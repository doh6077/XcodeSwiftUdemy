
import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // Load Navigation Controllers (NOT individual ViewControllers)
        let firstNavVC = storyboard.instantiateViewController(withIdentifier: "FirstNavController") as! UINavigationController
        let secondNavVC = storyboard.instantiateViewController(withIdentifier: "SecondNavController") as! UINavigationController
        let thirdNavVC = storyboard.instantiateViewController(withIdentifier: "ThirdNavController") as! UINavigationController
        let fourthNavVC = storyboard.instantiateViewController(withIdentifier: "FourthNavController") as! UINavigationController

        self.viewControllers = [firstNavVC, secondNavVC, thirdNavVC, fourthNavVC]

        self.tabBar.barStyle = .black
        self.tabBar.tintColor = .white
        self.tabBar.unselectedItemTintColor = .gray  // Inactive tab color
    }
}

