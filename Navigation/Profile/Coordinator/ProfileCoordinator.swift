//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation
import UIKit

class ProfileCoordinator: ProfileBaseCoordinatorProtocol {
    
    var parentCoordinator: AppBaseCoordinatorProtocol?
    
    lazy var rootViewController: UIViewController = UIViewController()
    
    let loginVC = LogInViewController()
    
    func start() -> UIViewController {
        loginVC.loginAction = { [weak self] in
            self?.goToProfile2Screen()
        }
        rootViewController = UINavigationController(rootViewController: loginVC)
        return rootViewController
    }
    
    func goToProfile2Screen() {
        var vc: ProfileViewController
    #if DEBUG
        vc = ProfileViewController(userService: TestUserService(), userName: "testUser")
    #else
        let name = loginVC.loginTextField.text
        let password = loginVC.passwordTextField.text
        let loginFactory = MyLoginFactory()
        let checkedUser = loginFactory.checkUserLogin()
        let status: Bool = checkedUser.didTapOnButton(loginVC, enteredLogin: name!, enteredPassword: password!)
        guard status else {
            print("Try again")
            return
        }
        vc = ProfileViewController(userService: CurrentUserService(), userName: name! )
    #endif
        vc.goToPhotoGalleryAction = { [weak self] in
            self?.goToPhotosGallery()
        }
        navigationRootViewController?.pushViewController(vc, animated: true)
    }

    func goToPhotosGallery() {
        let photosVC = PhotosViewController()
        navigationRootViewController?.pushViewController(photosVC, animated: true)
    }
}
