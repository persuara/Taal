//
//  Norma;Cell.swift
//  Taal
//
//  Created by AmirHossein EramAbadi on 4/13/23.
//

import UIKit
class NormalCell: UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self.self)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red.withAlphaComponent(0.3)
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("fatality")
    }
}
