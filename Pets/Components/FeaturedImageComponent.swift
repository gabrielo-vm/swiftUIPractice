//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 28/03/23.
//

import Foundation
import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    
    var uniqueID: String {
        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
//        AnyView(Text("Hello"))
        AsyncImage(url: uiModel.imageUrl) { image in
            
            image.resizable()
                .aspectRatio(contentMode: .fill)
                    
        } placeholder: {
             ProgressView()
        }.toAnyView()
    }
    
}
    
