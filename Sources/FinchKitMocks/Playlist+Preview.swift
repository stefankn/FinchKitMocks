//
//  Playlist+Preview.swift
//  FinchKitMocks
//
//  Created by Stefan Klein Nulent on 21/02/2025.
//

import Foundation
import FinchKit

extension Playlist {
    
    // MARK: - Properties
    
    public static var preview: Playlist {
        .init(id: 1, name: "Sample playlist", description: "Playlist description", createdAt: .distantPast, updatedAt: .now)
    }
    
    
    
    // MARK: - Functions
    
    public static func preview(id: Int) -> Playlist {
        .init(id: id, name: "Playlist \(id)", description: "Playlist description", createdAt: .distantPast, updatedAt: .now)
    }
    
    public static func preview(_ count: Int) -> [Playlist] {
        (1...count).map {
            .preview(id: $0)
        }
    }
}
