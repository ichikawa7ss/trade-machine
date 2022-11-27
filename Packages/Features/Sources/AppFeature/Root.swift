//
//  Root.swift
//  
//
//  Created by ichikawa on 2022/11/16.
//

import ComposableArchitecture
import Foundation

public struct Root: ReducerProtocol {

    public init() {}
    
    // MARK: - State

	public struct State: Equatable {
        public init() {}
        
    }

    // MARK: - Action

    public enum Action {
        case onAppear
    }

    public var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                state = .init()
                return .none
            }
        }
    }
}
