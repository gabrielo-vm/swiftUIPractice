//
//  EmptyComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 17/04/23.
//

import Foundation
import SwiftUI

struct EmptyComponent: UIComponent {
    
    let id = UUID()
    
    func render() -> AnyView {
        EmptyView().toAnyView()
    }
}
