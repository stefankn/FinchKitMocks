//
//  PlaylistEntry+Preview.swift
//  FinchKitMocks
//
//  Created by Stefan Klein Nulent on 22/02/2025.
//

import Foundation
import FinchKit

extension PlaylistEntry {
    
    // MARK: - Properties
    
    public static var preview: PlaylistEntry {
        .init(id: 1, index: 0, createdAt: .distantPast, item: .preview)
    }
    
    
    
    // MARK: - Functions
    
    public static func preview(id: Int) -> PlaylistEntry {
        .init(id: id, index: id, createdAt: .distantPast, item: .preview)
    }
    
    public static func preview(_ count: Int) -> [PlaylistEntry] {
        (1...count).map {
            .preview(id: $0)
        }
    }
}
