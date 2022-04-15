//
//  SecretSquirrelFrameworkTests.swift
//  SecretSquirrelFrameworkTests
//
//  Created by Jerrad Thramer on 4/14/22.
//

import XCTest
@testable import SecretSquirrelFramework

class SecretSquirrelFrameworkTests: XCTestCase {
    func testSpeaking() throws {
      XCTAssertTrue(SecretSquirrel().speech.hasPrefix("Hello from SecretSquirrel!"))
    }
  
  func testRegula() throws {
    XCTAssertTrue(SecretSquirrel().regulaSpeech.contains("Regula Dependancy: <RGLCLogger:"))
  }
}
