//
//  TeamListView.swift
//  
//
//  Created by ichikawa on 2022/11/27.
//

import SwiftUI
import Representable

struct TeamListView: View {
    
    @State var conference: Conference
    let tapCellHandler: ((Team) -> Void)?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            header
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
    
    private var header: some View {
        switch conference {
        case .eastern:
            return Asset.logoEastern.swiftUIImage
                .resizable()
                .scaledToFit()
                .padding(4)
        case .western:
            return Asset.logoWestern.swiftUIImage
                .resizable()
                .scaledToFit()
                .padding(4)
        }
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
