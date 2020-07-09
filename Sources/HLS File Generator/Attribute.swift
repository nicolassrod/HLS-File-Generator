//
//  File.swift
//  
//
//  Created by Nicolás A. Rodríguez on 7/2/20.
//

import Foundation

public protocol Attributed: Renderable { }

public enum AttributeValueType: Renderable {
    case quoted(String)
    case unQuoted(String)
    
    public func render() -> String {
        switch self {
        case .quoted(let value):
            return "\"\(value)\""
        case .unQuoted(let value):
            return "\(value)"
        }
    }
}


// MARK: - AttributeValue
public protocol ValueAttribute {
    var value: String { get set }
}

public struct AttributeValue: Attributed, ValueAttribute, Renderable {
    public var value: String
    
    public func render() -> String {
        "\(value)"
    }
}


// MARK: - ValueAndTrailingValueAttribute
public protocol ValueAndTrailingValueAttribute {
    var value: String { get set }
    var trailingValue: String { get set }
}

public struct AttributeValueAndTrailingValue: Attributed, ValueAndTrailingValueAttribute, Renderable {
    public var value: String
    public var trailingValue: String
    
    public func render() -> String {
        "\(value)\n\(trailingValue)"
    }
}


// MARK: - ValueAndTrailingValueAttribute
public protocol KeyValueAttribute {
    var attributes: [(key: String, value: AttributeValueType)] { get }
}

public struct AttributeKeyValue: Attributed, KeyValueAttribute, Renderable {
    public var attributes: [(key:String, value: AttributeValueType)]
    
    public func render() -> String {
        var result = ""
        for (index, value) in attributes.enumerated() {
            result.append("\(index == 0 ? "" : ",")\(value.key.uppercased())=\(value.value.render())")
        }
        return result
    }
}

// MARK: - keyValueAndTrailingValue
public protocol keyValueAndTrailingValueAttribute {
    var attributes: [(key: String, value: AttributeValueType)] { get }
    var trailingValue: String { get set }
}

public struct AttributeKeyValueAndTrailingValue: Attributed, keyValueAndTrailingValueAttribute, Renderable {
    public var attributes: [(key: String, value: AttributeValueType)]
    public var trailingValue: String
    
    public func render() -> String {
        var result = ""
        for (index, value) in attributes.enumerated() {
            result.append("\(index == 0 ? "" : ",")\(value.key.uppercased())=\(value.value.render())")
        }
        result.append("\n\(trailingValue)")
        return result
    }
}
