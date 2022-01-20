//
//  FeedModuleFactory.swift
//  Navigation
//
//  Created by GiN Eugene on 16/1/22.
//

import Foundation
import UIKit

class FeedModule {

    var model: FeedViewOutputProtocol
    var view: FeedViewController
    
    init(model: FeedViewOutputProtocol, view: FeedViewController) {
        self.model = model
        self.view = view
    }
}

/// *FACTORY*
protocol CreateModuleFactoryProtocol {
    func createMainModule() -> FeedModule
}

/// *FACTORY - IMPLEMENTATION*
class FeedModuleFactory: CreateModuleFactoryProtocol {

    func createMainModule() -> FeedModule {
        let feedModel = FeedViewModel()
        let feedView = FeedViewController(feedViewModel: feedModel)
        let feedModule = FeedModule(model: feedModel, view: feedView)
        return feedModule
    }
    
    func createPostModule() -> PostViewController {
        let controller = PostViewController()
        return controller
    }
    
    func createInfoModule() -> InfoViewController {
        let controller = InfoViewController()
        return controller
    }
}
