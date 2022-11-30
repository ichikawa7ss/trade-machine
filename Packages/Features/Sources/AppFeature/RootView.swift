//
//  RootView.swift
//  
//
//  Created by ichikawa on 2022/11/16.
//

import ComposableArchitecture
import SwiftUI
import SelectTeamsFeature

// MARK: - RootView
public struct RootView: View {
  
  public init(_ store: StoreOf<Root>) {
    self.store = store
  }
  
  public let store: StoreOf<Root>
  
  public var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Getting started")) {
          NavigationLink(
            "SelectTeams",
            destination: SelectTeamsView(
              store: self.store.scope(
                state: \.selectTeams,
                action: Root.Action.selectTeams
              )
            )
          )
        }
      }
      .navigationBarTitle("Root View", displayMode: .inline)
      .onAppear { ViewStore(store).send(.onAppear) }
    }
  }
}

//// MARK: - RootView_Previews
//struct RootView_Previews: PreviewProvider {
//    static var previews: some View {
//        RootView(
//            store: .init(
//                initialState: Root.State(),
//                reducer: Root()
//            )
//        )
//    }
//}
