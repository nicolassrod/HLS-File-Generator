// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HLS File Generator",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HLS File Generator",
            targets: ["HLS File Generator"]),
        .executable(
            name: "HLS File Generator CLI",
            targets: ["HLS File Generator CLI"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HLS File Generator",
            dependencies: []),
        .target(
            name: "HLS File Generator CLI",
            dependencies: ["HLS File Generator"]),
        .testTarget(
            name: "HLS File GeneratorTests",
            dependencies: ["HLS File Generator"]),
    ]
)
