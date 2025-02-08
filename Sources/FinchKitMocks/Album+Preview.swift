//
//  Album+Preview.swift
//  FinchKitMocks
//
//  Created by Stefan Klein Nulent on 07/02/2025.
//

import Foundation
import FinchKit

public extension Album {
    
    // MARK: - Properties
    
    static var preview: Album {
        .init(id: 1,
              title: "Sample album",
              artist: "Sample artist",
              artistSortKey: "sample-artist",
              type: .album,
              types: [.album],
              genre: "House",
              year: 2000,
              discCount: 1,
              label: "Acme Records",
              isArtworkAvailable: false,
              addedAt: .distantPast,
              media: "CD",
              isOfflineAvailable: false
        )
    }
    
    
    
    // MARK: - Functions
    
    static func preview(id: Int) -> Album {
        .init(id: id,
              title: "Sample album \(id)",
              artist: "Sample artist",
              artistSortKey: "sample-artist",
              type: .album,
              types: [.album],
              genre: "House",
              year: 2000,
              discCount: 1,
              label: "Acme Records",
              isArtworkAvailable: false,
              addedAt: .distantPast,
              media: "CD",
              isOfflineAvailable: false
        )
    }
    
    static func preview(_ count: Int) -> [Album] {
        (1...count).map {
            .preview(id: $0)
        }
    }
}
