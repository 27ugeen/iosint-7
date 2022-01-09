//
//  AppBaseCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation

protocol AppBaseCoordinatorProtocol: CoordinatorProtocol {
    var feedCoordinator: FeedBaseCoordinatorProtocol { get }
    var profileCoordinator: ProfileBaseCoordinatorProtocol { get }
}

protocol FeedBaseCoordinatedProtocol {
    var coordinator: FeedBaseCoordinatorProtocol? { get }
}

protocol ProfileBaseCoordinatedProtocol {
    var coordinator: ProfileBaseCoordinatorProtocol? { get }
}
