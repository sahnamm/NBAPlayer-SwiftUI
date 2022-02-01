//
//  StatText.swift
//  NBAPlayer
//
//  Created by Sahna Melly Marselina on 27/01/22.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName+":").font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 45)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }.minimumScaleFactor(0.6)
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatText(statName: "Age", statValue: "32").environment(\.sizeCategory, .extraSmall).previewDisplayName("Extra Small")
            StatText(statName: "Age", statValue: "32").environment(\.sizeCategory, .extraExtraExtraLarge).previewDisplayName("Extra Large")
        }
        
    }
}
