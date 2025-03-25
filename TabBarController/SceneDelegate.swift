import UIKit
import FBSDKCoreKit
import FacebookCore

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        guard let url = URLContexts.first?.url else {
            return
        }

        ApplicationDelegate.shared.application(
            UIApplication.shared,
            open: url,
            sourceApplication: nil,
            annotation: [UIApplication.OpenURLOptionsKey.annotation]
        )
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        
        //AccessToken.current = nil
        // debugging purpose
        if let token = AccessToken.current {
                print("\(token)")
            } else {
                print("❌")
            }
        // Check if user is already logged in with Facebook
        if let token = AccessToken.current, !token.isExpired {
            // User is logged in, show the main page
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            
            let mainVC = mainStoryboard.instantiateViewController(withIdentifier: "TabBarController") as! UITabBarController
            self.window?.rootViewController = mainVC

        } else {
            // User is not logged in, show the Facebook login page
            let loginVC = LoginViewController()
            let navController = UINavigationController(rootViewController: loginVC)
            self.window?.rootViewController = navController
        }

        self.window?.makeKeyAndVisible()
    }
 
}

