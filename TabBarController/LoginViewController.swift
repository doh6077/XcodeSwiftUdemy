//
//  ViewController.swift
//  TabBarController
//
//  Created by Dohee Kim on 2025-03-04.
//

import UIKit
import FBSDKLoginKit

class LoginViewController: UIViewController, LoginButtonDelegate {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //logout()
        
        view.backgroundColor = .white
        
        
        if let token = AccessToken.current, !token.isExpired{
            
            let token = token.tokenString
            let request = FBSDKLoginKit.GraphRequest(graphPath: "me",
                                                     parameters: ["fields":"email"],
                                                     tokenString: token,
                                                     version: nil,
                                                     httpMethod: .get)
            request.start(completion: { connection, result, error in
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                    } else {
                        print("✅ Login successful: \(String(describing: result))")
                        DispatchQueue.main.async {
                            self.navigateToMainApp()  
                        }
                    }
                })
        }
        else{
            let loginButton = FBLoginButton()
            loginButton.center = view.center
            loginButton.delegate = self
            loginButton.permissions = ["public_profile", "email"]
            
            view.addSubview(loginButton)
        }
    }

    func loginButton(_ loginButton: FBSDKLoginKit.FBLoginButton, didCompleteWith result: FBSDKLoginKit.LoginManagerLoginResult?, error: (any Error)?) {
        let token = result?.token?.tokenString
        
        let request = FBSDKLoginKit.GraphRequest(graphPath: "me",
                                                     parameters: ["fields":"email"],
                                                     tokenString: token,
                                                     version: nil,
                                                     httpMethod: .get)

            request.start(completion: { connection, result, error in
                if let error = error {
                    print("\(error.localizedDescription)")
                } else {
                    print("\(String(describing: result))")
                    
                    // Direct user to a Tab Bar controller.
                    DispatchQueue.main.async {
                        self.navigateToMainApp()
                    }
                }
            })

        


    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginKit.FBLoginButton) {
        
    }
    // Navigate to the main Tab Bar Controller
    func navigateToMainApp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let tabBarController = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? UITabBarController {
            if let window = UIApplication.shared.windows.first {
                window.rootViewController = tabBarController
                window.makeKeyAndVisible()
            }
            
            
        }
    }
    
    @objc func logout() {
        let loginManager = LoginManager()
        loginManager.logOut()

        // Clear the token
        AccessToken.current = nil

        // Reset to the login screen
        let loginVC = LoginViewController()
        let navController = UINavigationController(rootViewController: loginVC)
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = navController
            window.makeKeyAndVisible()
        }
        
        print("Logged out successfully. Now you should see the login screen again.")
    }

}
