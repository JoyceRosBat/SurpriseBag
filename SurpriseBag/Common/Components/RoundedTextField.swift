//
//  RoundedTextField.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

final class RoundedTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initializeUI()
    }

    private func initializeUI() {
        borderStyle = .roundedRect
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
