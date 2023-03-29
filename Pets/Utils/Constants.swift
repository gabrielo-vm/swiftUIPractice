//
//  Constants.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 27/03/23.
//

import Foundation

struct Constants {
    
    
    struct ScreenResource {
        
        static let host = "localhost"
        static let petListing = "pet-listing"
        
        static func resource(for resourceName: String)  -> URL? {
            
            var components = URLComponents()
            components.scheme = "http"
            components.host = host
            components.port = 3000
            components.path = "/\(resourceName)"

            return components.url
        }
        
        
    }
    
    
    struct Urls {
        static let baseURL = "http://localhost:3000"
        static let petListing = "\(baseURL)/pet-listing"
    }
    
}
