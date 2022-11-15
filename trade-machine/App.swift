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
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            AppView(store: self.appDelegate.store)
        }
    }
}

// MARK: - AppDelegate
final class AppDelegate: NSObject, UIApplicationDelegate {
    let store = Store(
        initialState: .init(),
        reducer: AppCore.reducer,
        environment: .live
    )
    lazy var viewStore = ViewStore(
        self.store.scope(state: { _ in () }),
        removeDuplicates: ==
    )

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        viewStore.send(.appDelegate(.didFinishLaunching))
        return true
    }
}

// MARK: AppCore.Environment live
extension AppCore.Environment {
    static let live = Self(
        mainQueue: DispatchQueue.main.eraseToAnyScheduler(),
        uuid: UUID.init
    )
}
