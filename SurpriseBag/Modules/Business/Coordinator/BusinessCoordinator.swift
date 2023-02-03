//
//  BusinessCoordinator.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit

protocol BusinessCoordinatorProtocol: Coordinator {
    func navigateToTest()
}

final class BusinessCoordinator: BusinessCoordinatorProtocol {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    let dependencies: BusinessDependenciesResolver
    
    init(dependencies: BusinessDependenciesResolver) {
        self.dependencies = dependencies
        self.navigationController = dependencies.resolve()
    }
    
    func start() {
        let controller: BusinessViewController = dependencies.resolve()
        navigationController.pushViewController(controller, animated: true)
    }
    
    func navigateToTest() {
        let controller: TestBusinessViewController = dependencies.resolve()
        navigationController.pushViewController(controller, animated: true)
    }
}
