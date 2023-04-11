//
//  CarouselView.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: CarouselUIModel
    
    var body : some View {
        ScrollView(.horizontal) {
            
            HStack {
                
                ForEach(uiModel.imageUrls, id: \.self) { url in
                    
                    Navigator.perform(action: uiModel.action){
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .frame(width: 200, height: 250)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                 
                }
            }
        }
    }
    
}
