//
//  SceneDelegate.swift
//  Navigation
//
//  Created by GiN Eugene on 19.07.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    let appCoordinator = AppCoordinator()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = appCoordinator.start()
    }
}

