//
//  PokemonWebService.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 12/02/24.
//

import Foundation

protocol NetworkApiProtocol : AnyObject {
   // var urlConfiguration =
    
}

class PokemonWebService {
    var urlConfiguration : PokemonUrlConfiguration
    
    init(urlConfiguration: PokemonUrlConfiguration) {
        self.urlConfiguration = urlConfiguration
    }
    
    public func consumeService<T>(withComplitionHandler handler : @escaping (Result <T,ErrorWebService>) -> Void) where T : Decodable  {  //T tipado
        guard let url = urlConfiguration.configureUrl() else {
            handler(.failure(.wrongUrl))
            return }
        URLSession.shared.dataTask(with: .init(url: url)) { data, response, _ in
            guard let data = data, let response = response as? HTTPURLResponse,(200...299).contains(response.statusCode) else {
                handler(.failure(.wrongResponse))
                return
            }
            if let json = try? JSONDecoder().decode(T.self, from: data) {
                handler(.success(json))
            } else {
                handler(.failure(.wrongJson))
            }
        }.resume()
    }
}
