//
//  PetListViewModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 28/03/23.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    private var service: ServiceProtocol
    
    @Published var components: [UIComponent] = []
    
    init(service: ServiceProtocol){
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(Constants.ScreenResource.petListing)
            components = try screenModel.buildComponents()
            
        } catch{
            print(error)
        }
    }
}
