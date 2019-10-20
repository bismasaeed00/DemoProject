//
//  WelcomeWireframe.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

class WelcomeWireframe: WelcomeWireframeProtocol {
    
    var viewController: WelcomeViewController?
    
    func showPhotoList() {
        do {
            let photoList = try PhotoListWireframe.instantiate()
            viewController?.show(photoList,
                                       sender: nil)
            
        } catch let error {
            assertionFailure(error.localizedDescription)
        }
    }
}
