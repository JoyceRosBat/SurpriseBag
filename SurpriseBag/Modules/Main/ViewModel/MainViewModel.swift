//
//  MainViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import Foundation

final class MainViewModel {
    var coordinator: MainCoordinatorProtocol
    
    init(coordinator: MainCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func navigateTo(_ userType: UserType) {
        coordinator.navigateTo(userType)
    }
}
