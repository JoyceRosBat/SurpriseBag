//
//  TestBusinessBuilder.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

final class TestBusinessBuilder: Builder {
    let coordinator: BusinessCoordinatorProtocol
    
    init(coordinator: BusinessCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func build() -> UIViewController {
        let viewModel = TestBusinessViewModel(coordinator: coordinator)
        let viewController = TestBusinessViewController(viewModel: viewModel)
        return viewController
    }
}
