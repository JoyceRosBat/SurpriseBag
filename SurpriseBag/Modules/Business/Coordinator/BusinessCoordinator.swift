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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        Task {
            await MainActor.run {
                let builder = BusinessBuilder(coordinator: self)
                navigationController.pushViewController(builder.build(), animated: true)
            }
        }
    }
    
    func navigateToTest() {
        Task {
            await MainActor.run {
                let builder = TestBusinessBuilder(coordinator: self)
                navigationController.pushViewController(builder.build(), animated: true)
            }
        }
    }
}
