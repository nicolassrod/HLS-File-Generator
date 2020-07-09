//
//  File.swift
//  
//
//  Created by Nicolás A. Rodríguez on 7/8/20.
//

import Foundation

public struct HLSDocument: Renderable {
    public var elements: [Element<AnyTagType>]
    
    public func render() -> String {
        let document = elements.map { $0.render() }
        return document.joined(separator: "\n")
    }
}

public extension HLSDocument {
    enum BasicTags {}
    enum MediaPlaylistTags {}
    enum MasterPlaylistTags {}
    enum MediaOrMasterPlaylistTags {}
}
