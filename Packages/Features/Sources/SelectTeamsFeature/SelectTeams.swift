//
//  SelectTeams.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import ComposableArchitecture

public struct SelectTeams: ReducerProtocol {

    public init() {}
    
    // MARK: - State

    public struct State: Equatable {
        public init() {}
        
    }

    // MARK: - Action

    public enum Action {
        case selectTeam
    }

    public var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .selectTeam:
                // TODO: impl
                return .none
            }
        }
    }
}
