//
//  PokemonPaths.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 13/02/24.
//

import Foundation

enum PokemonPaths {
    case getAllPokemon
    
    func getPath() -> String {
        switch self {
        case .getAllPokemon:
            return "/api/v2/pokedex/1/"
        }
    }
}
