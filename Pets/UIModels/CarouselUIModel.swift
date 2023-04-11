//
//  CarouselUIModel.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import Foundation

struct CarouselUIModel: Decodable {
    
    let imageUrls: [URL]
    let action: Action
}
