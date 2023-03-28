//
//  UIComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 28/03/23.
//

import Foundation
import SwiftUI

protocol UIComponent {
    
    var uniqueID: String { get }
    func render() -> AnyView
}
