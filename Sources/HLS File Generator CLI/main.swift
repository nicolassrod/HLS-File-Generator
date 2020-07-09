//
//  File.swift
//  
//
//  Created by Nicolás A. Rodríguez on 6/30/20.
//

import Foundation

struct HLS_File_Generator_CLI {
    var configuration: HLSConfiguration
    
    var playlist: [String] = []
    
    init(configuration: HLSConfiguration) {
        self.configuration = configuration
    }
    
    static func main() {
        
    }
}

protocol HLSConfiguration {
    var omitEndlist: Bool { get }
    var deleteSegments: Bool { get }
    var playListSize: Int { get }
    
}

struct LiveHLSConfiguration: HLSConfiguration {
    var omitEndlist: Bool = true
    var deleteSegments: Bool = true
    var playListSize: Int = 10
    
}
