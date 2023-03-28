//
//  ScreenModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 28/03/23.
//

import Foundation

enum ComponentError: Error {
    case decodingError
}

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

extension ScreenModel {
    
    func buildComponents() throws ->  [UIComponent] {
        
        var components:  [UIComponent] = []
        
        for component in self.componentGroup {
            switch component.type {
            case .featuredImage:
                print("FeaturedImage")
                guard let uiModel: FeaturedImageUIModel = component.data.decode() else {
                    throw ComponentError.decodingError
                }
                
                components.append(FeaturedImageComponent(uiModel: uiModel))
            }
        }
        
        return components
    }
}
