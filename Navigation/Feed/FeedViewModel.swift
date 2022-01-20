//
//  FeedViewModel.swift
//  Navigation
//
//  Created by GiN Eugene on 7/1/22.
//
import Foundation
import UIKit

protocol FeedViewOutputProtocol {
    func check(word: String) -> Bool
}

final class FeedViewModel: FeedViewOutputProtocol {

    private let password = "123"

    func check(word: String) -> Bool {
       return word == password ? true : false
    }
    
}
