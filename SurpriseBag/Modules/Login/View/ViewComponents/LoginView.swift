//
//  LoginView.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit
import Combine

final class LoginView: UIView {
    
    // MARK: - Views
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username:"
        return label
    }()
    
    lazy var usernameTextField: RoundedTextField = {
        let textField = RoundedTextField()
        textField.addTarget(self, action: #selector(textDidChanged), for: .editingChanged)
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        return label
    }()
    
    lazy var passwordTextField: RoundedTextField = {
        let textField = RoundedTextField()
        textField.isSecureTextEntry = true
        textField.addTarget(self, action: #selector(textDidChanged), for: .editingChanged)
        return textField
    }()
    
    lazy var loginButton: GreenButton = {
        let button = GreenButton()
        button.setTitle("Login", for: .normal)
        button.isEnabled = false
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return button
    }()
    
    lazy var mainView: UIView = {
        let view = UIView()
        
        let stackView = UIStackView(arrangedSubviews: [
            usernameLabel,
            usernameTextField,
            passwordLabel,
            passwordTextField,
            loginButton,
            UIView()
        ])
        
        stackView.axis = .vertical
        stackView.spacing = 16
        
        view.fill(with: stackView)
        
        return view
    }()
    
    // MARK: - Properties
    
    var subject = PassthroughSubject<(String?, String?), Never>()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Views
    
    private func setupView() {
        fill(with: mainView)
    }
    
    func enableButton(enabled: Bool) {
        loginButton.isEnabled = enabled
    }
    
    @objc func textDidChanged() {
        enableButton(enabled: usernameTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false)
    }
    
    @objc func tap() {
        subject.send((usernameTextField.text, passwordTextField.text))
    }
}
