//
//  AllPokemonResponse.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 13/02/24.
//

import Foundation


struct AllPokemonResponse : Codable {
    var id : Int?
    var pokemon_entries : [AllPokemonEntries]?
}

struct AllPokemonEntries : Codable {
    var entry_number : Int?
    var pokemon_species : AllPokemonSpecies?
}

struct AllPokemonSpecies : Codable {
    var name : String?
    var url : String?
}
