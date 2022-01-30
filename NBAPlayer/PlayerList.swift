//
//  PlayerList.swift
//  NBAPlayer
//
//  Created by Sahna Melly Marselina on 27/01/22.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) { currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)){
                    PlayerRow(player: currentPlayer).frame(height: 80)
                }
            }.navigationTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
