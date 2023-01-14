//
//  BusinessViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import Foundation

final class BusinessViewModel {
    
    var coordinator: BusinessCoordinatorProtocol
    
    init(coordinator: BusinessCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func gotoTest() {
        coordinator.navigateToTest()
    }
    
}
