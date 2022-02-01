//
//  PlayerRow.swift
//  NBAPlayer
//
//  Created by Sahna Melly Marselina on 27/01/22.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
            Text(player.name).font(.caption).minimumScaleFactor(0.5).lineLimit(1)
            Spacer()
        }
        
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100)).environment(\.sizeCategory, .extraSmall).previewDisplayName("Extra Small")
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100)).environment(\.sizeCategory, .extraExtraExtraLarge).previewDisplayName("Extra Large")
        }
    }
}
