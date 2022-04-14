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
        let squirrel = SecretSquirrel()
        let spoken = squirrel.speak()
      XCTAssertTrue(spoken.hasPrefix("Hello from SecretSquirrel!"))
      XCTAssertTrue(spoken.contains("Alamofire Dependancy: Alamofire.Session"))
    }
}
