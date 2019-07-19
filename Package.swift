// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SDOSSwiftExtension",
    products: [
        .library(
            name: "SDOSSwiftExtension",
            targets: ["SDOSSwiftExtension"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SDOSSwiftExtension",
            dependencies: [],
            path: "src")
    ]
)
