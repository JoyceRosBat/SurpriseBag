//
//  CommonDependenciesResolver.swift
//  SurpriseBag
//
//  Created by Joyce Rosario Batista on 3/2/23.
//

import Foundation

protocol CommonDependenciesResolver: MainDependenciesResolver,
                                     CustomerDependenciesResolver,
                                     LoginDependenciesResolver,
                                     BusinessDependenciesResolver {}
