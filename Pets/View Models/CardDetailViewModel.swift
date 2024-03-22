//
//  CardDetailViewModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 12/04/23.
//

import Foundation

@MainActor
class CardDetailViewModel: ObservableObject {
    
    private var service: ServiceProtocol
    @Published var components = [UIComponent]()
    
    init(service: ServiceProtocol){
        self.service = service
    }
    
    func load(cardId: Int) async {
        do {
            let screenModel = try await service.load(Constants.ScreenResource.cardDetail(id: cardId))
            self.components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
    
}
