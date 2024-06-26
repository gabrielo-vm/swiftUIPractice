//
//  ContentView.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 27/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = PetListViewModel(service: LocalService())
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.components, id: \.id) { component in
                    component.render()
                }
                .navigationTitle("Yugioh")
            }
            .listStyle(.plain)
            .task {
                await vm.load()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
