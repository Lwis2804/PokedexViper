//
//  AllPokemonTableViewCell.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 19/02/24.
//

import UIKit

class AllPokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var allPokemonNameCell: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configurateCell(withEntry entry : AllPokemonEntries?) {
        guard let entrada = entry else { return }
        self.allPokemonNameCell.text = "\(entrada.entry_number ?? 0 ) \(entrada.pokemon_species?.name ?? "")"
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
