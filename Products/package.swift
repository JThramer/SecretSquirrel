// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

let frameworkName: StaticString = "SecretSquirrel"

import PackageDescription

let package = Package(
    name: frameworkName,
    products: [
        .library(
            name: frameworkName,
            targets: [frameworkName]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
          name: frameworkName,
          path: "SecretSquirrel.framework"),
        .testTarget(
            name: "SecretSquirrelTests",
            dependencies: [frameworkName]),
    ]
)

