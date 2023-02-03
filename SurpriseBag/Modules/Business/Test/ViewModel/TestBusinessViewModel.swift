//
//  TestBusinessViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import Foundation

final class TestBusinessViewModel {
    let dependencies: BusinessDependenciesResolver
    var coordinator: BusinessCoordinatorProtocol {
        dependencies.resolve()
    }
    
    init(dependencies: BusinessDependenciesResolver) {
        self.dependencies = dependencies
    }
}
