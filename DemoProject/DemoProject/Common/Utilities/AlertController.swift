//
//  AlertViewController.swift
//  DemoProject
//
//  Created by Bisma Saeed on 12.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import UIKit
class AlertController {
    
    /// Current visible view controller in key window
    private static var rootViewController: UIViewController? {
        
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        return window?.rootViewController
    }
    
    /// Display Alert
    /// - Parameter title: Title of alert, default value "Error"
    /// - Parameter message: Message to be displayed
    /// - Parameter cancelButtonTitle: Cancel button Title, default value "Okay"
    static func errorAlert(title: String = "Error",
                           message: String,
                           cancelButtonTitle: String = "Okay") {
        
        guard let rootViewController = rootViewController else { return }
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: cancelButtonTitle,
                                         style: .cancel,
                                         handler: { _ in
            alertController.dismiss(animated: true,
                                    completion: nil)
        })
        
        alertController.addAction(cancelAction)
        alertController.show(rootViewController,
                             sender: nil)
    }
    
}
