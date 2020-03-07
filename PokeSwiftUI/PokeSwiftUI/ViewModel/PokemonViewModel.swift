//
//  PokemonViewModel.swift
//  PokeSwiftUI
//
//  Created by Moon on 2020/2/29.
//  Copyright © 2020 CMoney. All rights reserved.
//

import Foundation
import Combine

class Requester: ObservableObject {
    
    var objectWillChange =  ObservableObjectPublisher()
    
    var shouldPresentModal = false {
        didSet {
            objectWillChange.send()
        }
    }

    func fetch() {
        // Request goes here
        // Edit `shouldPresentModel` accordingly
    }
}

class PokemonViewModel: Codable {
    
    var sample: PokemonSample
}

class PokemonSample: Codable {
    
    let id: Int = 1
    let ability: [Ability]
}

class Ability: Codable {
    let name: String
    let url: String
    let isHidden: Bool
    let slot: Int
    
    enum CodingKeys: String, CodingKey {
        case name
        case url
        case isHidden = "is_hidden"
        case slot
    }
}
