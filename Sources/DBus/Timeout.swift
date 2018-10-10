//
//  Timeout.swift
//  DBus
//
//  Created by Alsey Coleman Miller on 10/10/18.
//

import CDBus

/// DBus Timeout
public struct Timeout: RawRepresentable {
    
    public var rawValue: Int32
    
    public init(rawValue: Int32) {
        
        self.rawValue = rawValue
    }
}

public extension Timeout {
    
    public static let `default`: Timeout = Timeout(rawValue: DBUS_TIMEOUT_USE_DEFAULT)
}

extension Timeout: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int32) {
        
        self.init(rawValue: value)
    }
}