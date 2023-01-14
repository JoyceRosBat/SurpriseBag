//
//  LoginViewModel.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/1/23.
//

import Foundation

final class LoginViewModel {
    
    var repository: LoginRepositoryProtocol
    var coordinator: LoginCoordinatorProtocol
    
    @Published var usernameTitle = "Introduce tu username:"
    @Published var passwordTitle = "Introduce tu password:"
    
    init(repository: LoginRepositoryProtocol,
         coordinator: LoginCoordinatorProtocol) {
        self.repository = repository
        self.coordinator = coordinator
    }
    
    func viewDidLoad() {
        
    }
    
    func doLogin(_ username: String?, _ password: String?) {
        Task {
            print(username, ", ", password)
            if try await repository.validate(username, password) {
                coordinator.goToMainScreen()
            }
        }
    }
}
