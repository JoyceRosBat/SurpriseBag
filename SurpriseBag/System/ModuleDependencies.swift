//
//  ModuleDependencies.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 3/2/23.
//

import UIKit

final class ModuleDependencies {
    let rootNavigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.rootNavigationController = navigationController
    }
    
    func resolve() -> UINavigationController {
        rootNavigationController
    }
    
    func resolve() -> Requester {
        Requester()
    }
}

extension ModuleDependencies: CommonDependenciesResolver {}
