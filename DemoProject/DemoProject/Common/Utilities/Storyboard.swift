//
//  Storyboard.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

enum StoryboardType: String {
    case main = "Main"
}

class Storyboard {
    static func instantiate<T>(view: T.Type,
                               from type: StoryboardType) -> T? {
        
        let storyboard = UIStoryboard(name: type.rawValue,
                                      bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T
    }
}
