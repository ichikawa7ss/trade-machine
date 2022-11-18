//
//  File.swift
//  
//
//  Created by ichikawa on 2022/11/16.
//

import ComposableArchitecture
import Foundation

public enum AppCore {

    // MARK: - State

    public struct State: Equatable {
        var appDelegateState: AppDelegateCore.State

        public init() {
            self.appDelegateState = .init()
            self.isAnimating = true
        }
        
        var isAnimating: Bool

    }

    // MARK: - Action

    public enum Action {
        case appDelegate(AppDelegateCore.Action)
        case didFinishSplashAnimation
    }

    // MARK: - Environment

    public struct Environment {
        var mainQueue: AnySchedulerOf<DispatchQueue>
        var uuid: () -> UUID

        public init(
            mainQueue: AnySchedulerOf<DispatchQueue>,
            uuid: @escaping () -> UUID
        ) {
            self.mainQueue = mainQueue
            self.uuid = uuid
        }
    }

    // MARK: - Reducer

    public static let reducer: AnyReducer<State, Action, Environment> =
        .combine(
            AppDelegateCore.reducer.pullback(
                state: \State.appDelegateState,
                action: /Action.appDelegate,
                environment: { _ in
                    AppDelegateCore.Environment()
                }
            ),
            .init { state, action, _ in
                switch action {
                case .appDelegate:
                    return .none
                case .didFinishSplashAnimation:
                    return .run { send in
                        print("didFinishSplashAnimation")
                    }
                }
            }
        )
}
