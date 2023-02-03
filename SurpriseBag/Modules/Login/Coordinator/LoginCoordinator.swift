//
//  LoginCoordinator.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit

protocol LoginCoordinatorProtocol: Coordinator {
    func goToMainScreen()
    func forgotPassword()
}

final class LoginCoordinator: LoginCoordinatorProtocol {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    let dependencies: LoginDependenciesResolver
    
    init(dependencies: LoginDependenciesResolver) {
        self.dependencies = dependencies
        self.navigationController = dependencies.resolve()
    }
    
    func start() {
        let controller: LoginViewController = dependencies.resolve()
        navigationController.pushViewController(controller, animated: true)
    }
    
    func goToMainScreen() {
        print("Go to main screen")
    }
    
    func forgotPassword() {
        print("Go to forgot password")
    }
}
