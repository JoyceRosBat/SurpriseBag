//
//  BusinessBuilder.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit

final class BusinessBuilder: Builder {
    let coordinator: BusinessCoordinatorProtocol
    
    init(coordinator: BusinessCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func build() -> UIViewController {
        let viewModel = BusinessViewModel(coordinator: coordinator)
        let viewController = BusinessViewController(viewModel: viewModel)
        return viewController
    }
}
