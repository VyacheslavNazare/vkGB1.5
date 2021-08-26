//
//  GradientView.swift
//  UI_app
//
//  Created by Вячеслав on 25.08.2021.
//

import UIKit

class GradientView: UIView {
    
    var gradientLayer: CAGradientLayer!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.brown.cgColor, UIColor.white.cgColor]
        gradientLayer.locations = [0.4, 0.45, 0.5]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        layer.addSublayer(gradientLayer)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
