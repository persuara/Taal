//
//  ViewController.swift
//  Taal
//
//  Created by AmirHossein EramAbadi on 4/13/23.
//

import UIKit

class CustomerHomePage: UIViewController {
    
    lazy var dataSet: DataSet = .init()
    lazy var chpdelegate = Delegataion.CHomePage(dataSet: dataSet)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [].forEach { [weak self] content in
            guard self != nil else { return }
        }
        view.backgroundColor = .white
    }
}

