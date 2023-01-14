//
//  MainBuilder.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import UIKit

final class MainBuilder: Builder {
    
    var coordinator: MainCoordinatorProtocol
    
    init(coordinator: MainCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func build() -> UIViewController {
        let viewModel = MainViewModel(coordinator: coordinator)
        let viewController = MainViewController(viewModel: viewModel)
        return viewController
    }
}
