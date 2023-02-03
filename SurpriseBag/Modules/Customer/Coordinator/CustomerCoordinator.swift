//
//  CustomerCoordinator.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

protocol CustomerCoordinatorProtocol: Coordinator {
    func goToLogin()
}

final class CustomerCoordinator: CustomerCoordinatorProtocol {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    let dependencies: CustomerDependenciesResolver
    
    init(dependencies: CustomerDependenciesResolver) {
        self.dependencies = dependencies
        self.navigationController = dependencies.resolve()
    }
    
    func start() {
        let controller: CustomerViewController = dependencies.resolve()
        navigationController.pushViewController(controller, animated: true)
    }
    
    func goToLogin() {
        let coordinator: LoginCoordinatorProtocol = dependencies.resolve()
        coordinator.start()
    }
}
