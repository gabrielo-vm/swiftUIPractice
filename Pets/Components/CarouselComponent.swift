//
//  CarouselComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    var uniqueID: String {
        ComponentType.carousel.rawValue
    }
    
    let uiModel: CarouselUIModel
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
    
}


