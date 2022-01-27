//
//  FeedCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation
import UIKit

class FeedCoordinator: FeedBaseCoordinatorProtocol {
    
    var parentCoordinator: AppBaseCoordinatorProtocol?
    lazy var rootViewController: UIViewController = UIViewController()
    let factory = FeedModuleFactory()
    
    func start() -> UIViewController {
        let module = factory.createMainModule()
        let feedVC = module.view
        
        feedVC.goToPostsAction = { [weak self] in
            self?.goToPostScreen()
        }
        rootViewController = UINavigationController(rootViewController: feedVC)
        return rootViewController
    }
    
    func goToPostScreen() {
        let module = factory.createPostModule()
        let postVC = module
        
        postVC.goToInfoAction = { [weak self] in
            self?.goToInfoScreen()
        }
        navigationRootViewController?.pushViewController(postVC, animated: true)
    }
    
    func goToInfoScreen() {
        let module = factory.createInfoModule()
        let infotVC = module
        navigationRootViewController?.present(infotVC, animated: true, completion: nil)
    }
}
