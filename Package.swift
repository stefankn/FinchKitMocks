// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FinchKitMocks",
    platforms: [
        .macOS(.v15),
        .iOS(.v18)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FinchKitMocks",
            targets: ["FinchKitMocks"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/stefankn/FinchKit.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FinchKitMocks",
            dependencies: ["FinchKit"],
            resources: [.process("Images/")]
        )
    ]
)
