//
//  CapsuleRealityarea.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct CapsuleRealityarea: View {
    var body: some View {
        RealityView{ content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
            
            content.add(entity)
        }
    }
}

#Preview {
    CapsuleRealityarea()
        .environment(ViewModel())
}
