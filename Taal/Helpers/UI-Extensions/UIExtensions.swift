//
//  UIExtensions.swift
//  Taal
//
//  Created by AmirHossein EramAbadi on 4/13/23.
//

import UIKit

extension UIView {
    public func setTopBottomConstraints(view: UIView, both: Bool = true, onlyTop: Bool = false ,topConstant: CGFloat = 0.0,
                                        bottomConstant: CGFloat = 0.0) {
        if both == true {
            topAnchor.constraint(equalTo: view.topAnchor, constant: topConstant).isActive = true
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottomConstant).isActive = true
        } else if onlyTop {
            topAnchor.constraint(equalTo: view.topAnchor, constant: topConstant).isActive = true
        } else {
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottomConstant).isActive = true
        }
    }
    public func setLeadingTrailingConstraints(
        view: UIView, isHeightWidthNeeded: Bool,
        isTrailLeadNeeded: Bool,
        bothHeightAndWidth: Bool = true,
        bothLeadingTrail: Bool = true,
        onlyTrail: Bool = false,
        OnlyHeight: Bool = false,
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        widthConst: CGFloat = 0.0,
        heightConstant: CGFloat =  0.0) {
            translatesAutoresizingMaskIntoConstraints = false
            if isHeightWidthNeeded == true {
                if bothHeightAndWidth {
                    widthAnchor.constraint(equalToConstant: widthConst).isActive = true
                    heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
                } else if OnlyHeight {
                    heightAnchor.constraint(equalToConstant: heightConstant).isActive = true
                } else {
                    widthAnchor.constraint(equalToConstant: widthConst).isActive = true
                }
            }
            if isTrailLeadNeeded {
                if bothLeadingTrail {
                    leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingConstant).isActive = true
                    trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailingConstant).isActive = true
                } else if onlyTrail {
                    trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailingConstant).isActive = true
                } else {
                    leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingConstant).isActive = true
                }
            }
        }
}
