//
//  MainCoordinator.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

protocol MainCoordinatorProtocol: Coordinator {
    func navigateTo(_ userType: UserType)
}

final class MainCoordinator: MainCoordinatorProtocol {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        Task {
            await MainActor.run {
                let builder = MainBuilder(coordinator: self)
                navigationController.pushViewController(builder.build(), animated: true)
            }
        }
    }
    
    func navigateTo(_ userType: UserType) {
        switch userType {
        case .customer:
            let coordinator = CustomerCoordinator(navigationController: navigationController)
            coordinator.start()
        case .business:
            let coordinator = BusinessCoordinator(navigationController: navigationController)
            coordinator.start()
        }
    }
    
}
