//
//  InspirationAppApp.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import SwiftUI

@main
struct InspirationAppApp: App {
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup {
         Areas()
                .environment(model)
        }
//        .windowStyle(.automatic) // set the style(appearance) of the window
//        .defaultSize(width: 1.5, height: 0.8, depth: 0.5, in: .meters) // default size of window
        
        WindowGroup(id: "CapsuleRealityarea") {
             CapsuleRealityarea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters) // default size of window
        
        
        ImmersiveSpace(id: "FullRocketRealityArea") {
            FullRocketRealityArea()
                .environment(model)
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
