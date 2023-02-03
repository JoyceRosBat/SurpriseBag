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
    var dependencies: MainDependenciesResolver
    
    init(dependencies: MainDependenciesResolver) {
        self.dependencies = dependencies
        self.navigationController = dependencies.resolve()
    }
    
    func start() {
        let controller: MainViewController = dependencies.resolve()
        navigationController.pushViewController(controller, animated: true)
    }
    
    func navigateTo(_ userType: UserType) {
        switch userType {
        case .customer:
            let coordinator: CustomerCoordinatorProtocol = dependencies.resolve()
            coordinator.start()
        case .business:
            let coordinator: BusinessCoordinatorProtocol = dependencies.resolve()
            coordinator.start()
        }
    }
    
}
