//
//  SecretSquirrel.swift
//  SecretSquirrelFramework
//
//  Created by Jerrad Thramer on 4/14/22.
//

import Foundation
import RegulaCommon
/// The mysterious
public struct SecretSquirrel: Identifiable {
  
  let logger = RegulaCommon.RGLCLogger()
 
  public let id = UUID()
  
  public init() { }
  
  public var speech: String {
    return "Hello from \(type(of: self))! Instance ID: \(id.uuidString)"
  }
  
  public var regulaSpeech: String {
    return "Regula Dependancy: \(String(describing: logger))"
  }
  
}
