//
//  LocalService.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 29/03/23.
//

import Foundation

class LocalService: ServiceProtocol {
    func load(_ resourceName: String) async throws -> ScreenModel {
        
        guard let path = Bundle.main.path(forResource: resourceName, ofType: "json")else {
            fatalError("Resourse file \(resourceName) not found!")
        }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        let screenModel = try JSONDecoder().decode(ScreenModel.self, from: data)
        
        return screenModel
    }
}
