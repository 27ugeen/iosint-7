//
//  Coordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation
import UIKit

protocol FlowCoordinator: AnyObject {
    var parentCoordinator: AppBaseCoordinator? { get set }
}

protocol Coordinator: FlowCoordinator {
    var rootViewController: UIViewController { get set }
    
    func start() -> UIViewController
}

extension Coordinator {
    var navigationRootViewController: UINavigationController? {
        get {
            (rootViewController as? UINavigationController)
        }
    }
}
