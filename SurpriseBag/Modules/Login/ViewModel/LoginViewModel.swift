//
//  LoginViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import Foundation

final class LoginViewModel {
    
    let dependencies: LoginDependenciesResolver
    var useCase: LoginUseCaseProtocol {
        dependencies.resolve()
    }
    var coordinator: LoginCoordinatorProtocol {
        dependencies.resolve()
    }
    
    @Published var usernameTitle = "Introduce tu username:"
    @Published var passwordTitle = "Introduce tu password:"
    
    init(dependencies: LoginDependenciesResolver) {
        self.dependencies = dependencies
    }
    
    func viewDidLoad() {
        
    }
    
    func doLogin(_ username: String?, _ password: String?) {
        Task {
            print(username, ", ", password)
            if try await useCase.validate(username, password) {
                coordinator.goToMainScreen()
            }
        }
    }
}
