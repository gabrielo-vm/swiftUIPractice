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
                
                ForEach(uiModel.items) { item in
                    
                    Navigator.perform(action: uiModel.action, payload: item){
                        AsyncImage(url: item.imageUrl) { image in
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
