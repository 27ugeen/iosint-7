//
//  Coordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation
import UIKit

protocol FlowCoordinatorProtocol: AnyObject {
    var parentCoordinator: AppBaseCoordinatorProtocol? { get set }
}

protocol CoordinatorProtocol: FlowCoordinatorProtocol {
    var rootViewController: UIViewController { get set }
    
    func start() -> UIViewController
}

extension CoordinatorProtocol {
    var navigationRootViewController: UINavigationController? {
        get {
            (rootViewController as? UINavigationController)
        }
    }
}
