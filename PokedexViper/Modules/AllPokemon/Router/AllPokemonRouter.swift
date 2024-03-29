//  AllPokemonRouter.swift
//  PokedexViper
//  Created by LUIS GONZALEZ on 13/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class AllPokemonRouter {
	
    static func createModule() -> UIViewController {
        
        let view = AllPokemonViewController()
        let presenter = AllPokemonPresenter()
        let interactor = AllPokemonInteractor()
        let router = AllPokemonRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension AllPokemonRouter: AllPokemon_PresenterToRouterProtocol {
    
}
