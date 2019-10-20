//
//  URL.swift
//  DemoProject
//
//  Created by Bisma Saeed on 19.10.19.
//  Copyright © 2019 Example. All rights reserved.
//

import Foundation

extension URL {
    
    private var base: String {
        return "www.flickr.com/services/rest/?"
    }
    
    private var responseType: String {
        return "&format=json&nojsoncallback=1"
    }
    
    private var searchPath: String {
        return "method=flickr.photos.search"
    }
    
    func getPhotoSearch(latitude: Double, longitude: Double) -> URL? {
        let urlPath = base + searchPath + "&\(Constants.Flicker.apiKey)" +  "&lat=\(latitude)" + "&lon\(longitude)"
        return URL(string: urlPath)
    }
}
