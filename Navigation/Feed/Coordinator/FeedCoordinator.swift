//
//  FeedCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation
import UIKit

class FeedCoordinator: FeedBaseCoordinator {
    
    var parentCoordinator: AppBaseCoordinator?
    
    lazy var rootViewController: UIViewController = UIViewController()
    
    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: FeedViewController(coordinator: self))
        return rootViewController
    }
    func goToPostScreen() {
        let postVC = PostViewController(coordinator: self)
        navigationRootViewController?.pushViewController(postVC, animated: true)
    }

    func goToInfoScreen() {
        let infotVC = InfoViewController()
        navigationRootViewController?.present(infotVC, animated: true, completion: nil)
    }
}
