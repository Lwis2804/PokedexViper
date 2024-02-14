//
//  AllPokemonResponse.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 13/02/24.
//

import Foundation


struct AllPokemonResponse : Codable {
    var id : Int?
    var names : [AllPokemonNames]?
}

struct AllPokemonNames : Codable {
    var name : String?
}
