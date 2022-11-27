//
//  SelectedTeamsView.swift
//  
//
//  Created by ichikawa on 2022/11/28.
//

import SwiftUI

struct SelectedTeamsView: View {
    
    @State var selectedTeams: [Team]
    
    var body: some View {
        ZStack(alignment: Alignment.center) {
            Rectangle()
                .fill(Color.gray)
                .frame(maxWidth: .infinity, maxHeight: 54)
                .cornerRadius(8.0)
                .padding(8)
            HStack() {
                ForEach(Array(selectedTeams)) { team in
                    Text(team.name)
                }
            }
        }
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectedTeamsView(selectedTeams: .constant([]))
//    }
//}
