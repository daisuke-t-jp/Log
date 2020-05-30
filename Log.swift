//
//  Log.swift
//
//  Created by Daisuke TONOSAKI on 2020/04/17.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import Foundation


class Log {
    
    private static let dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
    
    static func d(_ str: Any = "", function: String = #function, file: String = #file, line: Int = #line) {
        #if DEBUG
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        
        print("[DEV]\(formatter.string(from: Date())) [\((file as NSString).lastPathComponent)][\(line)][\(function)]\n\(str)")
        #endif
    }
    
    static func i(_ str: Any = "", function: String = #function, file: String = #file, line: Int = #line) {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        
        print("[INF]\(formatter.string(from: Date())) [\((file as NSString).lastPathComponent)][\(line)][\(function)]\n\(str)")
    }
    
    static func w(_ str: Any = "", function: String = #function, file: String = #file, line: Int = #line) {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        
        print("[WAR]\(formatter.string(from: Date())) [\((file as NSString).lastPathComponent)][\(line)][\(function)]\n\(str)")
    }
    
    static func e(_ str: Any = "", function: String = #function, file: String = #file, line: Int = #line) {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        
        print("[ERR]\(formatter.string(from: Date())) [\((file as NSString).lastPathComponent)][\(line)][\(function)]\n\(str)")
    }
    
}
