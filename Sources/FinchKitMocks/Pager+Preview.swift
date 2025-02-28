//
//  Pager+Preview.swift
//  FinchKitMocks
//
//  Created by Stefan Klein Nulent on 09/02/2025.
//

import Foundation
import FinchKit

extension Pager where T == Album {
    
    // MARK: - Functions
    
    public static func preview(_ count: Int) -> Pager<Album> {
        Pager(items: Album.preview(count), total: count, limit: count, page: 1, type: nil, sorting: .added)
    }
}

extension Pager where T == Item {
    
    // MARK: - Functions
    
    public static func preview(_ count: Int) -> Pager<Item> {
        Pager(items: Item.preview(count), total: count, limit: count, page: 1, type: nil, sorting: .added)
    }
}
