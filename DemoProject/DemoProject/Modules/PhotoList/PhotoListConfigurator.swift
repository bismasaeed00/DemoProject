//
//  PhotoListConfigurator.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import Foundation

class PhotoListConfigurator: NSObject {
    
    @IBOutlet private weak var viewController: PhotoListViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure(viewController: viewController)
    }
    
    private func configure(viewController: PhotoListViewController?) {
        
        let presenter = PhotoListPresenter()
        let wireframe = PhotoListWireframe()
        
        wireframe.viewController = viewController
        
        presenter.wireframe = wireframe
        presenter.view = viewController
        
        viewController?.presenter = presenter
        viewController?.mvpPresenter = presenter
        
    }
}
