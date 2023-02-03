//
//  CustomerDependenciesResolver.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 3/2/23.
//

import UIKit

protocol CustomerDependenciesResolver {
    func resolve() -> UINavigationController
    func resolve() -> CustomerViewModel
    func resolve() -> CustomerCoordinatorProtocol
    func resolve() -> CustomerViewController
    func resolve() -> LoginCoordinatorProtocol
}

extension CustomerDependenciesResolver {
    func resolve() -> CustomerViewModel {
        CustomerViewModel(dependencies: self)
    }
    
    func resolve() -> CustomerCoordinatorProtocol {
        CustomerCoordinator(dependencies: self)
    }
    
    func resolve() -> CustomerViewController {
        CustomerViewController(dependencies: self)
    }
}
