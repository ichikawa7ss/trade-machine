//
//  File.swift
//  
//
//  Created by ichikawa on 2022/11/16.
//

import ComposableArchitecture
import SwiftUI

public enum AppDelegateCore {
    // MARK: - State

    public struct State: Equatable {
        public init() {}
    }

    // MARK: - Action

    public enum Action: Equatable {
        case didFinishLaunching
    }

    // MARK: - Environment

    public struct Environment {}

    // MARK: - Reducer

    public static let reducer = AnyReducer<State, Action, Environment> { _, action, _ in
        switch action {
        case .didFinishLaunching:
            return .none
        }
    }
}
