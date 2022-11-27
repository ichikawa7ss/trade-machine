//
//  TeamListView.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import SwiftUI

struct TeamListView: View {
    
    @State var conference: Conference
    let tapCellHandler: ((Team) -> Void)?
    
    var body: some View {
        List {
            ForEach(conference.teams()) { team in
                HStack(spacing: 8) {
                    TeamLogoImage(team: team, width: 32)
                    Text(team.name)
                    Spacer()
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    tapCellHandler?(team)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView(
            conference: .western,
            tapCellHandler: nil
        )
    }
}
