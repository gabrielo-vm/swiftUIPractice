//
//  PetListViewModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 28/03/23.
//

import Foundation

class PetListViewModel: ObservableObject {
    
    private var service: Webservice
    
    @Published var components: [UIComponent] = []
    
    init(service: Webservice){
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(resource: Constants.Urls.petListing)
            components = try screenModel.buildComponents()
            
        } catch{
            print(error)
        }
    }
}
