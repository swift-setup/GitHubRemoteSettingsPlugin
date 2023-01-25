//
//  File.swift
//  
//
//  Created by Qiwei Li on 1/25/23.
//

import Foundation
import PluginInterface


class MockStore: StoreUtilsProtocol {
    func set(_ value: Any?, forKey defaultName: String, from plugin: (any PluginInterfaceProtocol)?) {
        
    }
    
    func removeObject(forKey defaultName: String, from plugin: (any PluginInterfaceProtocol)?) {
        
    }
    
    func get<T>(forKey defaultName: String, from plugin: (any PluginInterfaceProtocol)?) -> T? {
        return "TOKEN" as? T
    }
}
