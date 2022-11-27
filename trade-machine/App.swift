//
//  trade_machineApp.swift
//  trade-machine
//
//  Created by ichikawa on 2022/11/15.
//

import AppFeature
import ComposableArchitecture
import SwiftUI

@main
struct App: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            RootView(
                Store(
                    initialState: Root.State(),
                    reducer: Root()
                )
            )
        }
    }
}
