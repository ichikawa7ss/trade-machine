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
    
    // TODO: 状態を子viewに細分化する
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack(spacing: 8.0) {
                ZStack(alignment: Alignment.center) {
                    Rectangle()
                        .fill(Color.white)
                        .frame(maxWidth: .infinity, maxHeight: 54)
                        .cornerRadius(8.0)
                        .padding(8)
                    HStack() {
                        ForEach(Array(viewStore.selectedTeams)) { team in
                            Spacer()
                            TeamLogoImage(team: team, width: 40)
                            Spacer()
                        }
                    }
                }
                HStack(alignment: .top, spacing: 4) {
                    TeamListView(
                        conference: .western,
                        tapCellHandler: { team in
                            viewStore.send(.selectTeam(team))
                        })
                        .frame(maxHeight: .infinity)
                        .cornerRadius(8.0)
                        .padding(8)
                    TeamListView(
                        conference: .eastern,
                        tapCellHandler: { team in
                            viewStore.send(.selectTeam(team))
                        })
                        .frame(maxHeight: .infinity)
                        .cornerRadius(8.0)
                        .padding(8)
                }
            }
            .padding(8)
        }
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
