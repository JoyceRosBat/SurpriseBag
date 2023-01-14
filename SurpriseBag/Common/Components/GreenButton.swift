//
//  GreenButton.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

final class GreenButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initializeUI()
    }

    private func initializeUI() {
        layer.backgroundColor = UIColor.systemGreen.cgColor
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        setupAlpha()
        layer.cornerRadius = 16
    }
    
    func setupAlpha() {
        alpha = isEnabled ? 1 : 0.5
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.height * 0.5
        layer.cornerCurve = .continuous
    }
}
