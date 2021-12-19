//
//  AppBaseCoordinator.swift
//  Navigation
//
//  Created by GiN Eugene on 19/12/21.
//

import Foundation

protocol AppBaseCoordinator: Coordinator {
    var feedCoordinator: FeedBaseCoordinator { get }
    var profileCoordinator: ProfileBaseCoordinator { get }
}

protocol FeedBaseCoordinated {
    var coordinator: FeedBaseCoordinator? { get }
}

protocol ProfileBaseCoordinated {
    var coordinator: ProfileBaseCoordinator? { get }
}
