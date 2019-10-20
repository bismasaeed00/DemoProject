//
//  MVPViewController.swift
//  DemoProject
//
//  Created by Bisma Saeed on 19.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

class MVPViewController: UIViewController, MVPViewProtocol {
    
    var mvpPresenter: MVPPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mvpPresenter?.setupInitialPresenter()
    }
}
