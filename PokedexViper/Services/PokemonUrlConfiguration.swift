//
//  PokemonUrlConfiguration.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 12/02/24.
//

import Foundation

protocol PathsProtocol {
    var pathToUse : String { get } //variable de lectura
}

struct PokemonUrlConfiguration {
    var metodo : String
    var host : String
    var path : PathsProtocol
    
    public init(metodo: String, host: String, path: PathsProtocol) {
        self.metodo = metodo
        self.host = host
        self.path = path
    }
    
    func configureUrl() -> URL? {
        guard !host.isEmpty else { return nil }
        var components : URLComponents = URLComponents()
        components.scheme = metodo
        components.host = host
        components.path = path.pathToUse
        return components.url
    }
}

