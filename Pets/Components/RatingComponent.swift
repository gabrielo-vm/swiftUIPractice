//
//  RatingComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 13/04/23.
//

import Foundation
import SwiftUI

struct RatingComponent: UIComponent {
    var id = UUID()
    let uiModel: RatingRowUIModel
    
    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating)).toAnyView()
    }
    
    
  
}
