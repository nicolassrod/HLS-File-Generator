//
//  File.swift
//  
//
//  Created by Nicolás A. Rodríguez on 7/8/20.
//

import Foundation

public protocol Elementable {
    var name: String { get }
    var attribute: Attributed? { get }
}

public struct Element<Context>: Elementable, Renderable {
    public var name: String
    public var attribute: Attributed?
    
    public func render() -> String {
        if attribute == nil {
            return "#\(name.uppercased())"
        } else {
            return "#\(name.uppercased()):\(attribute?.render() ?? "")"
        }
    }
}

public extension Element where Context == Playlist.BasicTags {
    static func EXTM3U() -> Element {
        Element(name: "EXTM3U", attribute: nil)
    }
    
    static func EXT_X_VERSION(version: Int) -> Element {
        Element(name: "EXT-X-VERSION", attribute: AttributeValue(value: String(version)))
    }
}

public extension Element where Context == Playlist.MediaSegmentTags {
    static func EXTINF(duration: Float, url: String) -> Element {
        Element(name: "EXTINF", attribute: AttributeValueAndTrailingValue(value: String(duration), trailingValue: url))
    }
}

public extension Element where Context == Playlist.MediaPlaylistTags {
    static func EXT_X_TARGETDURATION(seconds: Int) -> Element {
        Element(name: "EXT-X-TARGETDURATION", attribute: AttributeValue(value: String(seconds)))
    }
    
    static func EXT_X_MEDIA_SEQUENCE(sequence: Int) -> Element {
        Element(name: "EXT-X-MEDIA-SEQUENCE", attribute: AttributeValue(value: String(sequence)))
    }
}
