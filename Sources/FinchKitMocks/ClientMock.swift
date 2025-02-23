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
    
    public func getAlbums(sorting: Sorting = .added, limit: Int) async throws -> Pager<Album> {
        Pager(items: Album.preview(10), total: 20, limit: limit, page: 1, sorting: .added)
    }
    
    public func getNextPage(_ pager: Pager<Album>) async throws -> Pager<Album> {
        Pager(items: Album.preview(10), total: 20, limit: 10, page: 1, sorting: .added)
    }
    
    public func getItems(for album: Album) async throws -> [Item] {
        Item.preview(20)
    }
    
    public func getEntries(for playlist: Playlist) async throws -> [PlaylistEntry] {
        PlaylistEntry.preview(20)
    }
    
    public func getSingletons(sorting: Sorting = .added, limit: Int) async throws -> Pager<Item> {
        Pager(items: Item.preview(20), total: 20, limit: 10, page: 1, sorting: .added)
    }
    
    public func getNextPage(_ pager: Pager<Item>) async throws -> Pager<Item> {
        Pager(items: Item.preview(20), total: 20, limit: 10, page: 1, sorting: .added)
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
    
    public func getPlaylists() async throws -> [Playlist] {
        Playlist.preview(20)
    }
    
    public func createPlaylist(name: String, description: String?, items: [Item]?) async throws -> Playlist {
        .preview
    }
    
    public func delete(_ playlist: Playlist) async throws {
        
    }
    
    public func add(_ item: Item, to playlist: Playlist) async throws -> PlaylistEntry {
        .preview
    }
    
    public func delete(_ entry: PlaylistEntry, from playlist: Playlist) async throws {
        
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
