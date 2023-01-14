//
//  LoginRepositoryProtocol.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/01/23.
//

import Foundation

protocol LoginRepositoryProtocol {
    func validate(_ username: String?, _ password: String?) async throws -> Bool
}
