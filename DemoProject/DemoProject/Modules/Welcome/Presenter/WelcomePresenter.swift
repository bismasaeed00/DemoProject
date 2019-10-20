//
//  WelcomePresenter.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import Foundation

class WelcomePresenter: WelcomePresenterProtocol {
    
    var view: WelcomeViewProtocol?
    var wireframe: WelcomeWireframeProtocol?
    
    func setupInitialPresenter() {
        view?.setDisclaimerText(text: Text.disclaimer.rawValue)
    }
    
    func nextTapped() {
        wireframe?.showPhotoList()
    }
    
}
