//
//  ScreenModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 28/03/23.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String:String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let componentGroup: [ComponentModel]
}
