//
//  CustomerViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import Foundation

final class CustomerViewModel {
    var dependencies: CustomerDependenciesResolver
    var coordinator: CustomerCoordinatorProtocol {
        dependencies.resolve()
    }
    
    init(dependencies: CustomerDependenciesResolver) {
        self.dependencies = dependencies
    }
    
    func goToLogin() {
        coordinator.goToLogin()
    }
}
