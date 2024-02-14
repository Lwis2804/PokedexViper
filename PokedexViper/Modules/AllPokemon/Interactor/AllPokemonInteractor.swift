//  AllPokemonInteractor.swift
//  PokedexViper
//  Created by LUIS GONZALEZ on 13/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class AllPokemonInteractor: AllPokemon_PresenterToInteractorProtocol {
    weak var presenter: AllPokemon_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "pokeapi.co"
    
    func getAllPokemonToInteractor() {
 //       let service : NetworkApiProtocol = PokemonWebService(urlConfiguration: PokemonUrlConfiguration(metodo: metodo, host: host, path: PokemonPaths.getAllPokemon.getPath()))
        let service : NetworkApiProtocol = PokemonWebService(urlConfiguration: PokemonUrlConfiguration(metodo: metodo, host: host, path: PokemonPaths.getAllPokemon.getPath()))
        
        service.consumeService { [weak self] (result:Result<AllPokemonResponse, ErrorWebService>) in
            switch result {
            case .success(let succes):
                self?.presenter?.getToAllPokemonFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    
}

