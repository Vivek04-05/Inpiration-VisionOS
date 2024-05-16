//
//  FullRocketRealityArea.swift
//  InspirationApp
//
//  Created by Vivek Patel on 03/04/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    @State private var audioController: AudioPlaybackController?
    var body: some View {
        RealityView{ content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
            let ambientAudioEnitity = entity.findEntity(named: "AmbientAudio")
            guard let resource = try? await AudioFileResource(named: "/Root/Space_wav", from: "Immersive.usda", in: realityKitContentBundle) else {
                fatalError("Unable to find space.wave audio file")
            }
            
            audioController = ambientAudioEnitity?.prepareAudio(resource)
            audioController?.play()
            content.add(entity)
        }.onDisappear {
            audioController?.stop()
        }
    }
}

#Preview {
    FullRocketRealityArea()
        .environment(ViewModel())
}
