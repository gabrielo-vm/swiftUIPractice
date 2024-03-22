//
//  Action.swift
//  Pets
//
//  Created by Gabriel Valdez Mendoza on 10/04/23.
//

import Foundation

enum ActionType: String , Decodable {
    case sheet
    case push
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
