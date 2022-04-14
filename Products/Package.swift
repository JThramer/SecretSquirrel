// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

let frameworkName = "SecretSquirrelSPM" //your SPM wrapper, satisfies dependancies
let binaryName = "SecretSquirrel"
import PackageDescription

let package = Package(
    name: frameworkName,
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: frameworkName,
            targets: [frameworkName]),
    ],
    dependencies: [
      .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("5.2.0")),
    ],
    targets: [
      .target(name: frameworkName, dependencies: [
        .target(name: binaryName),
        .product(name: "Alamofire", package: "Alamofire")
      ]),
        .binaryTarget(
          name: binaryName,
          path: binaryName + ".xcframework"
        )
    ]
)
