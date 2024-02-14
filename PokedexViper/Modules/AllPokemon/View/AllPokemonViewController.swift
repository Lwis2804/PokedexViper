//  AllPokemonViewController.swift
//  PokedexViper
//  Created by LUIS GONZALEZ on 13/02/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class AllPokemonViewController: UIViewController {
    
    var allPokemonNames : [AllPokemonNames] = []

    var presenter: AllPokemon_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.getToAllPokemon()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension AllPokemonViewController: AllPokemon_PresenterToViewProtocol {
    func updateViewWithAllPokemon(withResponse response: AllPokemonResponse) {
        self.allPokemonNames = response.names ?? []
        print(allPokemonNames)
    }
}
