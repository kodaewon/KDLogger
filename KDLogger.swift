//
//  KDLogger.swift
//  KDLogger
//
//  Created by kd on 2021/03/12.
//

import Foundation

public struct KDLogger {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()
    
    public static func debug(_ msg: Any, file: String = #file, function: String = #function, line: Int = #line) {
        let fileName = file.split(separator: "/").last ?? ""
        let funcNmae = function.split(separator: "(").first ?? ""
        print("[Logger] 😋[\(dateFormatter.string(from: Date()))] [\(fileName)] [\(funcNmae)(\(line))] : \(msg)")
    }
    
    public static func error(_ msg: Any, file: String = #file, function: String = #function, line: Int = #line) {
        let fileName = file.split(separator: "/").last ?? ""
        let funcNmae = function.split(separator: "(").first ?? ""
        print("[Logger] 😡[\(dateFormatter.string(from: Date()))] [\(fileName)] [\(funcNmae)(\(line))] : \(msg)")
    }
}
