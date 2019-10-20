//
//  WelcomeConfigurator.swift
//  DemoProject
//
//  Created by Bisma Saeed on 19.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import Foundation

class WelcomeConfigurator: NSObject {
    @IBOutlet private weak var viewController: WelcomeViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure(viewController: viewController)
    }
    
    private func configure(viewController: WelcomeViewController?) {
        
        let presenter = WelcomePresenter()
        let wireframe = WelcomeWireframe()
        
        wireframe.viewController = viewController
        
        presenter.wireframe = wireframe
        presenter.view = viewController
        
        viewController?.presenter = presenter
        viewController?.mvpPresenter = presenter
        
    }
}
