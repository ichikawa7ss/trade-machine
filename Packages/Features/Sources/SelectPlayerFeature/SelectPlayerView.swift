//
//  SelectPlayerView.swift
//  
//
//  Created by ichikawa on 2022/12/01.
//

import SwiftUI
import ComposableArchitecture

// TODO: fetch player list
// TODO: impl selected player state management

struct SelectPlayerView: View {
  
  public init(store: StoreOf<SelectPlayer>) {
    self.store = store
  }
  
  public let store: StoreOf<SelectPlayer>
  
  var body: some View {
    WithViewStore(self.store, observe: { $0 }) { viewStore in
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
  }
}


struct SelectPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    SelectPlayerView(
      store: .init(
        initialState: SelectPlayer.State(),
        reducer: SelectPlayer()
      )
    )
  }
}
