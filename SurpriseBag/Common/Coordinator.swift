//
//  Coordinator.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
