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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        Task {
            await MainActor.run {
                let builder = CustomerBuilder(coordinator: self)
                navigationController.pushViewController(builder.build(), animated: true)
            }
        }
    }
    
    func goToLogin() {
        let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
