//
//  CrewsArea.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import SwiftUI

struct CrewsArea: View {
    var body: some View {
        HStack{
            ForEach(Crew.allCases){ crew in
                VStack(alignment: .leading, spacing: 10){
                    Image("crew-\(crew.name)")
                        .resizable()
                        .frame(width: 180, height: 200)
                    Text(crew.fullName)
                        .font(.system(size: 32,weight: .bold))
                    Text(crew.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180,minHeight: 200)
                .padding(15)
                .glassBackgroundEffect()
            }
        }
    }
}

#Preview {
    CrewsArea()
}
