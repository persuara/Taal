//
//  DataSet.swift
//  Taal
//
//  Created by AmirHossein EramAbadi on 4/13/23.
//

import Foundation

class DataSet {
    var headerArray: [ModelHeader] = [
        .init(type: .singleLabel, number: 1, labelInput: "Caring for You,\n Your Home And Family!"),
        .init(type: .searchBar, number: 1),
        .init(type: .singleLabel, number: 1, labelInput: "Services"),
        .init(type: .filter, number: 1)
    ]
}
