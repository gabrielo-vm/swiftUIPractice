//
//  CarouselComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    let id = UUID()
    let uiModel: CarouselUIModel
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
    
}


