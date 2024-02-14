//  AllPokemonPresenter.swift
//  PokedexViper
//  Created by LUIS GONZALEZ on 13/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class AllPokemonPresenter: AllPokemon_ViewToPresenterProtocol {
    weak var view: AllPokemon_PresenterToViewProtocol?
    var interactor: AllPokemon_PresenterToInteractorProtocol?
    var router: AllPokemon_PresenterToRouterProtocol?
    
    func getToAllPokemon() {
        interactor?.getAllPokemonToInteractor()
    }
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension AllPokemonPresenter: AllPokemon_InteractorToPresenterProtocol {
    func getToAllPokemonFromInteractor(withResponse response: AllPokemonResponse) {
        view?.updateViewWithAllPokemon(withResponse: response)
    }
}
