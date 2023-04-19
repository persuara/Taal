//
//  CHomePage.swift
//  Taal
//
//  Created by AmirHossein EramAbadi on 4/13/23.
//

import UIKit
extension Delegataion {
    class CHomePage: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
        var dataSet: DataSet?
        init(dataSet: DataSet) {
            self.dataSet = dataSet
        }
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            1
        }

        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            10
        }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NormalCell.reuseIdentifier, for: indexPath) as! NormalCell
            return cell
        }
//        func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//            let type = dataSet?.headerArray[indexPath.item].type
//            switch type {
//            case .singleLabel: do {
//                
//            }
//            case .filter: do {
//
//            }
//            case .searchBar: do {
//
//            }
//            default: print("")
//            }
//        }
    }
}
//extension Delegataion.CHomePage: PrLayoutDelegate {
//    func collectionView(_ collectionview: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        <#code#>
//    }
//
//    func collectionview(_ collectionview: UICollectionView, layout: UICollectionViewLayout, minimumLineSpacing section: Int) -> CGFloat {
//        <#code#>
//    }
//
//    func collectionview(_ collectionview: UICollectionView, layout: UICollectionViewLayout, minimumInterItemLineSpacing section: Int) -> CGFloat {
//        <#code#>
//    }
//
//    func collectionview(_ collectionview: UICollectionView, layout: UICollectionViewLayout, sectionSpacing section: Int) -> CGFloat {
//        <#code#>
//    }
//
//    func collectionview(_ collectionview: UICollectionView, layout: UICollectionViewLayout, numberOfHeaders section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionview: UICollectionView, layout: UICollectionViewLayout, sizeForHeaderAt indexPath: IndexPath) -> CGSize {
//        <#code#>
//    }
//
//
//}
