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
    
    static func perform<V:View>(action:Action, payload: Any? = nil, content: @escaping () -> V) -> AnyView {
        
        var destinationView: AnyView!
        
        switch action.destination {
        case .petDetail:
            if let payload = payload as? CarouselRowUIModel {
                destinationView = CardDetailScreen(id: payload.petId).toAnyView()
            }else if let payload = payload as? RowUIModel {
                destinationView = CardDetailScreen(id: payload.id)
                    .navigationTitle(payload.title)
                    .toAnyView()
            }else {
                destinationView = EmptyView().toAnyView()
            }
        }
        
        switch action.type {
            
        case .sheet :
            return SheetView(content: {
                content()
            }, destinationView: destinationView).toAnyView()
        case .push :
            return NavigationLink {
                destinationView
            } label: {
                content()
            }.toAnyView()
        }
    }
    

}
