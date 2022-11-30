//
//  SelectPlayer.swift
//  
//
//  Created by ichikawa on 2022/12/01.
//

import ComposableArchitecture

public struct SelectPlayer: ReducerProtocol {
  
  public init() {}
  
  public struct State: Equatable {
    public init() {}
    var selectedPlayer: [String] = []
  }
  
  public enum Action {
    case selectPlayer(String) // TODO: modeling
  }
  
  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .selectPlayer(let playerName):
        state.selectedPlayer.append(playerName)
        return .none
      }
    }
  }
}
