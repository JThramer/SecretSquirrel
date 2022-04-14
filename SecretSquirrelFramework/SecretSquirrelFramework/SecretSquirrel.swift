//
//  SecretSquirrel.swift
//  SecretSquirrelFramework
//
//  Created by Jerrad Thramer on 4/14/22.
//

import Foundation

/// The mysterious
public struct SecretSquirrel: Identifiable {
 
  public let id = UUID()
  
  func speak() -> String {
    return "Hello from \(type(of: self))! Instance ID: \(id.uuidString)"
  }
  
}
