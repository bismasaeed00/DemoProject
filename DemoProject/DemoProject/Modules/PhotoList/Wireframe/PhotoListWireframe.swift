//
//  PhotoListWireframe.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

class PhotoListWireframe: PhotoListWireframeProtocol {
    
    var viewController: PhotoListViewController?
    
    static func instantiate() throws -> PhotoListViewController {
        
        guard let viewController = Storyboard.instantiate(view: PhotoListViewController.self, from: .main) else { throw ThrowErrors.notFound }
        
//        let configurator = PhotoListConfigurator()
//        configurator.configure(viewController: viewController)
//
        return viewController
    }
}
