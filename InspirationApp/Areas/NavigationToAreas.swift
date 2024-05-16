//
//  NavigationToAreas.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack{
            
            Text("Welocme to the inspration 4 mission by SpaceX")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 250)
            
            HStack(spacing: 25, content: {
                ForEach(Area.allCases){ area in
                    NavigationLink{
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        if area == Area.astronauts {
                            CrewsArea()
                        }
                        else if area == Area.equipment {
                            EquipmentsArea()
                        }

                        else if area == Area.mission {
                            
                        }
                        Spacer()
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)

                    }.controlSize(.extraLarge)
                }
            })
            
        }
        .background(){
            Image("Inspiration4")
        }
    }
}

#Preview {
    NavigationToAreas()
}
