//
//  GrayButton.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

final class GrayButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initializeUI()
    }

    private func initializeUI() {
        layer.backgroundColor = UIColor.darkGray.cgColor
        setTitleColor(.white, for: .normal)
        titleEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        setupAlpha()
    }
    
    func setupAlpha() {
        alpha = isEnabled ? 1 : 0.5
    }
    
    override func layoutSublayers(of subLayer: CALayer) {
        super.layoutSublayers(of: subLayer)
        layer.cornerRadius = bounds.height * 0.5
        layer.cornerCurve = .continuous
    }
}

