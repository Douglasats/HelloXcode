//
//  UIButtonExtension.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 9/12/22.
//

import UIKit

extension UIButton {
    
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Rebote
    func bounce() {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) {(completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = .identity
            })
        }
    }
    
    // Brillar
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) {(completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
        }
    }
    
    // Salta
    func jump() {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(translationX: 10, y: 0)
        }) {(completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = .identity
            })
        }
    }
}
