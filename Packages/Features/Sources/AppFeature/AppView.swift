//
//  AppView.swift
//  
//
//  Created by ichikawa on 2022/11/16.
//

import ComposableArchitecture
import SwiftUI
import Representable

// MARK: - AppView
public struct AppView: View {
    let store: Store<AppCore.State, AppCore.Action>

    public init(store: Store<AppCore.State, AppCore.Action>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                LottieView(
                    asset: "nba",
                    isAnimating: viewStore.binding(
                        get: { _ in viewStore.state.isAnimating },
                        send: { _ in
                            AppCore.Action.didFinishSplashAnimation
                        }
                    )
                )
            }
        }
    }
}

// MARK: - AppView_Previews
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(
            store: .init(
                initialState: AppCore.State(),
                reducer: AppCore.reducer,
                environment: .init(
                    mainQueue: DispatchQueue.main.eraseToAnyScheduler(),
                    uuid: UUID.init
                )
            )
        )
    }
}
