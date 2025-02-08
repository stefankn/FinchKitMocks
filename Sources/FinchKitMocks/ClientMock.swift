//
//  ClientMock.swift
//  FinchKitMocks
//
//  Created by Stefan Klein Nulent on 26/01/2025.
//

import Foundation
import FinchKit

public final actor ClientMock: Client {
    
    // MARK: - Properties
    
    // MARK: Client Properties
    
    public var url: URL? = nil
    
    
    
    // MARK: - Construction
    
    public init() {}
    
    
    
    // MARK: - Functions
    
    // MARK: Client Functions
    
    public func connect(to url: URL) async throws {
        
    }
    
    public func getAlbums() async throws -> [Album] {
        Album.preview(10)
    }
    
    public func getItems(for album: Album) async throws -> [Item] {
        Item.preview(20)
    }
    
    public func artworkURL(for album: Album) -> URL? {
        getRandomArtwork()
    }
    
    public func artworkThumbnailURL(for album: Album) -> URL? {
        getRandomArtwork()
    }
    
    public func getStats() async throws -> Stats {
        Stats(trackCount: 5, totalTime: "1 hour", approximateTotalSize: "1 GB", artistCount: 2, albumCount: 2, albumArtistCount: 2)
    }
    
    public func streamURL(for item: Item) throws -> URL {
        URL(string: "http://test.local")!
    }
    
    
    
    // MARK: - Private Functions
    
    private func getRandomArtwork() -> URL? {
        guard
            let path = Bundle.module.resourcePath,
            let items = try? FileManager.default.contentsOfDirectory(atPath: path) else { return nil }
        
        let images = items.filter{ $0.hasPrefix("album") }.map{ ($0.split(separator: ".")[0], $0.split(separator: ".")[1]) }
        
        if let image = images.randomElement() {
            return Bundle.module.url(forResource: String(image.0), withExtension: String(image.1))
        }
        
        return nil
    }
}
