//
//  RowComponent.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 14/04/23.
//

import Foundation
import SwiftUI


struct RowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: RowUIModel
    
    func render() -> AnyView {
        HStack(){
            if let imageUrl = uiModel.imageUrl {
                AsyncImage(url: imageUrl) { image in
                    
                    image.resizable()
                        .frame(width: 100, height: 100)
                            
                } placeholder: {
                    ProgressView()
                }
                .toAnyView()
                    
                }
            VStack(alignment: .leading) {
                Text(uiModel.title)
                Text(uiModel.subTitle ?? "").opacity(0.4)
                Text(uiModel.description ?? "")
            }
        } .padding()
            .toAnyView()
    }    
}
