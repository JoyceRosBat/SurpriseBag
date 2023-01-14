//
//  CustomerBuilder.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

final class CustomerBuilder: Builder {
    let coordinator: CustomerCoordinatorProtocol
    
    init(coordinator: CustomerCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func build() -> UIViewController {
        let viewModel = CustomerViewModel(coordinator: coordinator)
        let viewController = CustomerViewController(viewModel: viewModel)
        return viewController
    }
}
