//
//  Item+Preview.swift
//  FinchKitMocks
//
//  Created by Stefan Klein Nulent on 07/02/2025.
//

import Foundation
import FinchKit

public extension Item {
    
    // MARK: - Properties
    
    static var preview: Item {
        .init(
            id: 1,
            track: 1,
            disc: 1,
            title: "Sample track",
            artist: "Sample artist",
            artists: "Sample artists",
            duration: .seconds(300),
            format: "FLAC",
            bitrate: 194495,
            sampleRate: 44100,
            genre: "House",
            lyricist: nil,
            composer: nil,
            comments: nil,
            musicBrainzId: nil,
            albumId: nil,
            offlineFilename: nil
        )
    }
    
    
    
    // MARK: - Functions
    
    static func preview(_ count: Int) -> [Item] {
        (1...count).map {
            Item(
                id: $0,
                track: $0,
                disc: 1,
                title: "Track \($0)",
                artist: "Sample artist",
                artists: "Sample artists",
                duration: .seconds((200...300).randomElement() ?? 300),
                format: "FLAC",
                bitrate: 194495,
                sampleRate: 44100,
                genre: "House",
                lyricist: nil,
                composer: nil,
                comments: nil,
                musicBrainzId: nil,
                albumId: nil,
                offlineFilename: nil
            )
        }
    }
}
