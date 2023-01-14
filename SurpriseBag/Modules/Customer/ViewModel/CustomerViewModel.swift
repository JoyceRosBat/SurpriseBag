//
//  CustomerViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import Foundation

final class CustomerViewModel {
    
    var coordinator: CustomerCoordinatorProtocol
    
    init(coordinator: CustomerCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func goToLogin() {
        coordinator.goToLogin()
    }
}
