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
            ScrollView {
                ForEach(vm.components, id: \.uniqueID) { component in
                    component.render()
                }
                .navigationTitle("Pets")
            }.task {
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
