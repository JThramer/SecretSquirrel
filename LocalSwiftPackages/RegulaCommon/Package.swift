// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RegulaCommon",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RegulaCommon",
            targets: ["RegulaCommon"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
      .binaryTarget(name: "RegulaCommon", url: "https://pods.regulaforensics.com/RegulaCommon/6.2.110/RegulaCommon-6.2.110.zip", checksum: "7fa3526a3a5bcff0ecdd6947b9b05b88c0163b0c2df47c9bb4903d25307fa4fc")
    ]
)
