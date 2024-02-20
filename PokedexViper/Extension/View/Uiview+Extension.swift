//
//  Uiview+Extension.swift
//  PokedexViper
//
//  Created by LUIS GONZALEZ on 19/02/24.
//

import UIKit

extension UIView {  //sirve para todos los elementos que herendan de UIview
    class var identifier : String {
        return String(describing: self)    // regresa el nombre de cualquier vista
    }
    class var nib : UINib {
        return UINib(nibName: identifier, bundle: .main)  // regresa el nib
    }
}


