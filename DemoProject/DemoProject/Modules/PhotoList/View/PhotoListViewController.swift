//
//  PhotoListViewController.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

class PhotoListViewController: MVPViewController {
    
    var presenter: PhotoListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension PhotoListViewController: PhotoListViewProtocol {
    
}
