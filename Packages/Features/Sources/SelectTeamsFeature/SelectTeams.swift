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
        var selectedTeams: [Team] = []
    }

    // MARK: - Action

    public enum Action {
        case selectTeam(Team)
    }

    public var body: some ReducerProtocol<State, Action> {
        Reduce { state, action in
            switch action {
            case .selectTeam(let team):
                if state.selectedTeams.map({ $0.id }).contains(team.id) {
                    // 重複してたら削除
                    let newArray = state.selectedTeams.filter { $0.id != team.id }
                    state.selectedTeams = newArray
                } else if state.selectedTeams.count <= 1 {
                    // 一旦2チームのみにするのでカウント確認
                    state.selectedTeams.append(team)
                }
                return .none
            }
        }
    }
}
