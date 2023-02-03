//
//  BusinessViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import Foundation

final class BusinessViewModel {
    
    let dependencies: BusinessDependenciesResolver
    var coordinator: BusinessCoordinatorProtocol {
        dependencies.resolve()
    }
    
    init(dependencies: BusinessDependenciesResolver) {
        self.dependencies = dependencies
    }
    
    func gotoTest() {
        coordinator.navigateToTest()
    }
    
}
