// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

let frameworkName = "SecretSquirrel"
import PackageDescription

let package = Package(
    name: frameworkName,
    products: [
        .library(
            name: frameworkName,
            targets: [frameworkName]),
    ],
    dependencies: [
      //.package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.2.0")),
    ],
    targets: [
        .binaryTarget(
          name: frameworkName,
          path: frameworkName + ".xcframework")
    ]
)
