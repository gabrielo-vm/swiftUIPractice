//
//  TextRowComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 13/04/23.
//

import Foundation
import SwiftUI

struct TextRowComponent: UIComponent {
    var id = UUID()
    
    let uiModel: TextRowUIModel
    
    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }
}
