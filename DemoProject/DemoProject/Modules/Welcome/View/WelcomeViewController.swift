//
//  WelcomeViewController.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit

class WelcomeViewController: MVPViewController {
    @IBOutlet private weak var disclaimerLabel: UILabel?
    
    var presenter: WelcomePresenterProtocol?
    
    @IBAction private func nextButtonTapped(_ sender: Any) {
        presenter?.nextTapped()
    }
}

extension WelcomeViewController: WelcomeViewProtocol {
    
    func setDisclaimerText(text: String) {
        disclaimerLabel?.text = text
    }
}
