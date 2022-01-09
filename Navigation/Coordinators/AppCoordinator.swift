//
//  AppCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 18/12/21.
//

import Foundation
import UIKit

class AppCoordinator: AppBaseCoordinatorProtocol {
    
    var parentCoordinator: AppBaseCoordinatorProtocol?
    
    lazy var feedCoordinator: FeedBaseCoordinatorProtocol = FeedCoordinator()
    lazy var profileCoordinator: ProfileBaseCoordinatorProtocol = ProfileCoordinator()
    
    var rootViewController: UIViewController = UITabBarController()
    
    func start() -> UIViewController {
        
        let feedViewController = feedCoordinator.start()
        feedCoordinator.parentCoordinator = self
        feedViewController.tabBarItem = UITabBarItem(title: feedViewController.title, image: UIImage(systemName: "house.fill"), tag: 0)
        
        let profileViewController = profileCoordinator.start()
        profileCoordinator.parentCoordinator = self
        profileViewController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 1)
        
        (rootViewController as? UITabBarController)?.viewControllers = [feedViewController, profileViewController]
    
        return rootViewController
    } 
}

