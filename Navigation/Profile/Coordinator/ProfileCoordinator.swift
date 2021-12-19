//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation
import UIKit

class ProfileCoordinator: ProfileBaseCoordinator {
    
    var parentCoordinator: AppBaseCoordinator?
    
    lazy var rootViewController: UIViewController = UIViewController()
    
    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: LogInViewController(coordinator: self))
        return rootViewController
    }
    
    func goToProfile2Screen() {
        var vc: ProfileViewController
    #if DEBUG
        vc = ProfileViewController(userService: TestUserService(), userName: "testUser", coordinator: self)
    #else
        let name = loginTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let loginFactory = MyLoginFactory()
        let checkedUser = loginFactory.checkUserLogin()
        let status: Bool = checkedUser.didTapOnButton(self, enteredLogin: name, enteredPassword: password)
        guard status else {
            print("Try again")
            return
        }
        vc = ProfileViewController(userService: CurrentUserService(), userName: name )
    #endif
        navigationRootViewController?.pushViewController(vc, animated: true)
    }

    func goToPhotosGallery() {
        let photosVC = PhotosViewController()
        navigationRootViewController?.pushViewController(photosVC, animated: true)
    }
}
