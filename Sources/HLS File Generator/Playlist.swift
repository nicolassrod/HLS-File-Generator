//
//  File.swift
//  
//
//  Created by Nicolás A. Rodríguez on 7/9/20.
//

import Foundation

protocol Playlistable: Renderable {
    var elements: [Element<Playlist.AnyTag>] { get }
}

public enum Playlist {
    public enum AnyTag {}
    public enum BasicTags {}
    public enum MediaSegmentTags {}
    public enum MediaPlaylistTags {}
    public enum MasterPlaylistTags {}
    public enum MediaOrMasterPlaylistTags {}
}
