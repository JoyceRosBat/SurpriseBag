//
//  LoginRepository.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/01/23.
//

import Foundation

final class LoginRepository: LoginRepositoryProtocol {
    let dependencies: LoginDependenciesResolver
    let networkRequester: Requester
    
    init(dependencies: LoginDependenciesResolver) {
        self.dependencies = dependencies
        self.networkRequester = dependencies.resolve()
    }
    
    func validate(_ username: String?, _ password: String?) async throws -> Bool {
        let request = LoginRequest.validate(username, password)
//        try await networkRequester.doRequest(request: request)
        return true
    }
}
