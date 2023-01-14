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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        Task {
            await MainActor.run {
                let builder = LoginBuilder(coordinator: self)
                navigationController.pushViewController(builder.build(), animated: true)
            }
        }
    }
    
    func goToMainScreen() {
        
    }
    
    func forgotPassword() {
        
    }
}
