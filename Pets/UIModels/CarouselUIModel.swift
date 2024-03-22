//
//  CarouselUIModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import Foundation


struct CarouselRowUIModel: Decodable, Identifiable {
    var id = UUID()
    let petId: Int
    let imageUrl: URL
    
    private enum CodingKeys: String,CodingKey{
        case petId
        case imageUrl
    }
}

struct CarouselUIModel: Decodable {
    
    let items: [CarouselRowUIModel]
    let action: Action
}
