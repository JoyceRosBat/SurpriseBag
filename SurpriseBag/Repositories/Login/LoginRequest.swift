//
//  LoginRequest.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 14/01/23.
//

import Foundation

enum LoginRequest {
    case validate(String?, String?)
}

extension LoginRequest: APIRequest {
    var path: String {
        switch self {
        case .validate: return "/validate"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .validate: return .get
        }
    }
    
    var queryItems: [URLQueryItem]? {
        switch self {
        case .validate(let username, let password): return [
            URLQueryItem(name: "username", value: username),
            URLQueryItem(name: "password", value: password)
        ]
        }
    }
}
