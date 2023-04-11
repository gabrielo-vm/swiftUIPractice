//
//  Navigator.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import Foundation
import SwiftUI

// navigation engine 
struct SheetView<V: View>: View {
    @State private var isPresentend: Bool = false
    
    let content: () -> V
    var destinationView: AnyView!
    
    var body: some View {
        content().onTapGesture {
            isPresentend = true
        }.sheet(isPresented: $isPresentend){
            destinationView
        }
    }
}


class Navigator {
    
    static func perform<V:View>(action:Action, content: @escaping () -> V) -> AnyView {
        
        var destinationView: AnyView!
        
        switch action.destination {
        case .petDetail:
            destinationView = Text("hello").toAnyView()
        }
        
        switch action.type {
            
        case .sheet :
            return SheetView(content: {
                content()
            }, destinationView: destinationView).toAnyView()
        }
    }
    

}
