//
//  LoginBuilder.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit

final class LoginBuilder: Builder {
    let coordinator: LoginCoordinatorProtocol
    
    init(coordinator: LoginCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func build() -> UIViewController {
        let repository = LoginRepository()
        let viewModel = LoginViewModel(repository: repository, coordinator: coordinator)
        let viewController = LoginViewController(viewModel: viewModel)
        return viewController
    }
}
