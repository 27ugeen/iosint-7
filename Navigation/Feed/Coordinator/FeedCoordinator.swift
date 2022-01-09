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
    
    func start() -> UIViewController {
        let feedVC = FeedViewController()
        feedVC.goToPostsAction = { [weak self] in
            self?.goToPostScreen()
        }
        rootViewController = UINavigationController(rootViewController: feedVC)
        return rootViewController
    }
    
    func goToPostScreen() {
        let postVC = PostViewController()
        postVC.goToInfoAction = { [weak self] in
            self?.goToInfoScreen()
        }
        navigationRootViewController?.pushViewController(postVC, animated: true)
    }
    
    func goToInfoScreen() {
        let infotVC = InfoViewController()
        navigationRootViewController?.present(infotVC, animated: true, completion: nil)
    }
}
