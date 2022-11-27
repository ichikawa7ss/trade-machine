//
//  SelectTeamsView.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import SwiftUI
import ComposableArchitecture

public struct SelectTeamsView: View {

    public init(store: StoreOf<SelectTeams>) {
        self.store = store
    }
    
    public let store: StoreOf<SelectTeams>
    
    public var body: some View {
        Text("SelectTeams")
    }
}

struct SelectTeamsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTeamsView(
            store: .init(
                initialState: SelectTeams.State(),
                reducer: SelectTeams()
            )
        )
    }
}
