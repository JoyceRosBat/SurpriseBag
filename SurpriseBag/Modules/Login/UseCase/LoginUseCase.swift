//
//  LoginUseCase.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 3/2/23.
//

import Foundation

protocol LoginUseCaseProtocol {
    func validate(_ username: String?, _ password: String?) async throws -> Bool
}

final class LoginUseCase: LoginUseCaseProtocol {
    let dependencies: LoginDependenciesResolver
    let repository: LoginRepositoryProtocol
    
    init(dependencies: LoginDependenciesResolver) {
        self.dependencies = dependencies
        self.repository = dependencies.resolve()
    }
    
    func validate(_ username: String?, _ password: String?) async throws -> Bool {
        guard let username, let password else { return false }
        return try await repository.validate(username, password)
    }
}
