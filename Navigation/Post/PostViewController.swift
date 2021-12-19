//
//  PostViewController.swift
//  Navigation
//
//  Created by GiN Eugene on 20.07.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    weak var coordinator: FeedBaseCoordinator?
    
    init(coordinator: FeedBaseCoordinator) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
    }
    
    required init?(coder: NSCoder) {
        nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGreen
        self.title = "Black Cat"
        
        let button = UIBarButtonItem(image: UIImage(systemName: "plus"), style: UIBarButtonItem.Style.done, target: self, action: #selector(postTapped))
        
        self.navigationItem.setRightBarButtonItems([button], animated: true)
    }
    
    @objc func postTapped() {
        self.coordinator?.goToInfoScreen()
    }
}
