//
//  MainViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import Foundation

final class MainViewModel {
    var dependencies: MainDependenciesResolver
    var coordinator: MainCoordinatorProtocol {
        dependencies.resolve()
    }
    
    init(dependencies: MainDependenciesResolver) {
        self.dependencies = dependencies
    }
    
    func navigateTo(_ userType: UserType) {
        coordinator.navigateTo(userType)
    }
}
