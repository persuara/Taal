//
//  Types.swift
//  Taal
//
//  Created by AmirHossein EramAbadi on 4/13/23.
//

import Foundation
extension Components.CollectionView {
    enum Types {
        case singleLabel
        case searchBar
        case filter
    }
}
struct ModelHeader {
    var type: Components.CollectionView.Types
    var number: Int
    var labelInput: String?
}


