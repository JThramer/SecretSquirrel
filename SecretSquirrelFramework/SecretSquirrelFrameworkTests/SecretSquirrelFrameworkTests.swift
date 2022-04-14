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
  
  func testAlamo() throws {
    XCTAssertTrue(SecretSquirrel().alamoSpeech.contains("Alamofire Dependancy: Alamofire.Session"))
  }
}
