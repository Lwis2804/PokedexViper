//
//  AllPokemonViewControllerExtension.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 19/02/24.
//

import UIKit

extension AllPokemonViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allPokemonNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AllPokemonTableViewCell.identifier,
                                                       for: indexPath) as? AllPokemonTableViewCell else { return AllPokemonTableViewCell()}
        cell.configurateCell(withEntry: allPokemonNames[indexPath.row])
        return cell
    }
}


