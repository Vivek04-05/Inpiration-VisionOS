//
//  EquipmentsArea.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import SwiftUI

struct EquipmentsArea: View {
    @Environment(ViewModel.self) private var model
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    var body: some View {
        @Bindable var model = model
        
        HStack{
            
            VStack {
                Image("equipment-capsule")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                
                Toggle(model.isShowingRocketCapsule ? "Hide Rocket Capsule (Volumetric)" : "Show Rocket Capsule (Volumetric)", isOn: $model.isShowingRocketCapsule )
                    .onChange(of: model.isShowingRocketCapsule) { _, isShowing in
                        if isShowing {
                            // open window volumentric
                            openWindow(id: "CapsuleRealityarea")
                        } else {
                            // dismiss window volumentric
                            dismissWindow(id: "CapsuleRealityarea")
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
            
            VStack {
                Image("equipment-fullrocket")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                
                Toggle(model.isShowingFullRocket ? "Hide Rocket Capsule (Full Immersed)" : "Show Rocket Capsule (Full Immersed)", isOn: $model.isShowingFullRocket )
                    .onChange(of: model.isShowingFullRocket) { _, isShowing in
                        if isShowing {
                            // open window Full Immersed
                            Task {
                                await openImmersiveSpace(id: "FullRocketRealityArea")
                            }
                        } else {
                            // dismiss window Full Immersed
                            Task{
                                await dismissImmersiveSpace()

                            }
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }.glassBackgroundEffect()
        }
    }
}

#Preview {
    EquipmentsArea()
        .environment(ViewModel())
}
