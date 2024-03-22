//
//  CardDetailScreen.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 12/04/23.
//

import SwiftUI

struct CardDetailScreen: View {
    let id : Int
    
    @StateObject private var vm: CardDetailViewModel
    
    init(id: Int) {
        _vm = StateObject(wrappedValue: CardDetailViewModel(service: Webservice()))
        self.id = id 
    }
    
    var body: some View {
        ScrollView {
            ForEach(vm.components, id: \.id) { component in
                component.render()
            }
        }.task {
            await vm.load(cardId: id)
        }
    }
}

struct CardDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailScreen(id: 2)
    }
}
