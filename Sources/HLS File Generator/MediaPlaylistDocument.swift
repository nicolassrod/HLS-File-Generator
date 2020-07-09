//
//  File.swift
//  
//
//  Created by Nicolás A. Rodríguez on 7/8/20.
//

import Foundation

public struct MediaPlaylistDocument: Playlistable {
    public var elements: [Element<Playlist.AnyTag>]
    
    public func render() -> String {
        let document = elements.map { $0.render() }
        return document.joined(separator: "\n")
    }
}

