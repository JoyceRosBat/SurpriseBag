//
//  LoginViewController.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/01/23.
//

import UIKit
import Combine

class LoginViewController: UIViewController {
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        return view
    }()
    
    var subscriptions = Set<AnyCancellable>()
    var viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        view.fill(with: loginView, edges: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
        bind()
        viewModel.viewDidLoad()
    }
    
    func bind() {
        viewModel
            .$usernameTitle
            .assign(to: \.text!, on: loginView.usernameLabel)
            .store(in: &subscriptions)
        
        viewModel
            .$passwordTitle
            .assign(to: \.text!, on: loginView.passwordLabel)
            .store(in: &subscriptions)
        
        loginView
            .subject
            .sink { [weak self] (username, password) in
                guard let self = self else { return }
                self.viewModel.doLogin(username, password)
            }
            .store(in: &subscriptions)
    }
}
