//
//  ServiceProtocol.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 29/03/23.
//

import Foundation

protocol ServiceProtocol {
    
    func load(_ resourceName: String ) async throws -> ScreenModel
}
