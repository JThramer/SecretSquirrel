//
//  SecretSquirrel.swift
//  SecretSquirrelFramework
//
//  Created by Jerrad Thramer on 4/14/22.
//

import Foundation
import Alamofire
/// The mysterious
public struct SecretSquirrel: Identifiable {
  
  let alamo = Alamofire.Session.default
 
  public let id = UUID()
  
  public init() { }
  
  public func speak() -> String {
    return """
Hello from \(type(of: self))!
Instance ID: \(id.uuidString)
Alamofire Dependancy: \(String(describing: alamo)) @ \(Unmanaged.passUnretained(alamo).toOpaque())
"""
  }
  
}
