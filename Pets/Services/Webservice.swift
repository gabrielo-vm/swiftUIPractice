//
//  Webservice.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 27/03/23.
//

import Foundation


enum NetworkError: Error {
    case invalidURL
    case invalidServerResponce
}

class Webservice {
    
    func load(resource: String ) async throws -> ScreenModel{
        guard let url = URL(string: resource) else {
            throw NetworkError.invalidURL
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
                throw NetworkError.invalidServerResponce
        }
        print(data,"check")
        return try JSONDecoder().decode(ScreenModel.self, from: data)
    }
}
