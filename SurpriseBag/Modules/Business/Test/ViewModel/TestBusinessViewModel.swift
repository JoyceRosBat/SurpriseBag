//
//  TestBusinessViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 15/1/23.
//

import Foundation

final class TestBusinessViewModel {
    var coordinator: BusinessCoordinatorProtocol
    
    init(coordinator: BusinessCoordinatorProtocol) {
        self.coordinator = coordinator
    }
}
