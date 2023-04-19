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
    
    lazy var layout: Components.CollectionView.Layout.PrLayout = .init()
    lazy var customerCollectionView: Components.CollectionView.PrCollectionView = {
        let view: Components.CollectionView.PrCollectionView = .init(frame: .zero, layout: layout)
        view.backgroundColor = .systemOrange
        view.delegate = chpdelegate
        view.dataSource = chpdelegate
        view.register(NormalCell.self, forCellWithReuseIdentifier: NormalCell.reuseIdentifier)
        return view
    }()
    lazy var stackview: UIStackView = {
        let view: UIStackView = .init(frame: .zero)
        view.spacing = 5
        view.backgroundColor = .blue.withAlphaComponent(0.9)
        return view
    }()
    lazy var testview: UIView = {
        let view: UIView = .init(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        view.backgroundColor = .red.withAlphaComponent(1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [customerCollectionView].forEach { [weak self] content in
            guard self != nil else { return }
            
            view.addSubview(content)
        }
        view.backgroundColor = .white
        
        customerCollectionView.setLeadingTrailingConstraints(view: view, isHeightWidthNeeded: true, isTrailLeadNeeded: true, widthConst: view.frame.size.width, heightConstant: view.frame.height)
        
    }
}

