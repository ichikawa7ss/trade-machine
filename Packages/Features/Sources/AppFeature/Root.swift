//
//  Root.swift
//  
//
//  Created by ichikawa on 2022/11/16.
//

import ComposableArchitecture
import Foundation
import SelectTeamsFeature

public struct Root: ReducerProtocol {
  
  public init() {}
  
  // MARK: - State
  
  public struct State: Equatable {
    public init() {}
    
    var selectTeams = SelectTeams.State()
    
  }
  
  // MARK: - Action
  
  public enum Action {
    case onAppear
    case selectTeams(SelectTeams.Action)
  }
  
  public var body: some ReducerProtocol<State, Action> {
    Reduce { state, action in
      switch action {
      case .onAppear:
        state = .init()
        return .none
      case .selectTeams:
        return .none
      }
    }
    
    Scope(state: \.selectTeams, action: /Action.selectTeams) {
      SelectTeams()
    }
  }
}
