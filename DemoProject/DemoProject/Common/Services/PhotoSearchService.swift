//
//  PhotoSearchService.swift
//  DemoProject
//
//  Created by Bisma Saeed on 19.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import Foundation

class PhotoSearchService {
    
    let latitude: Double
    let longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func photoSearch(result: @escaping (Result<Any, Error>) -> Void) {
        
        
    }
}
