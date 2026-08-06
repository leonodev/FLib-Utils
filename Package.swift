// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FLibUtils",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "FLibUtils",
            targets: ["FLibUtils"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FLibUtils",
            dependencies: [],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency"),
                .enableUpcomingFeature("ExistentialAny")
            ]
        ),
        .testTarget(
            name: "FLibUtilsTests",
            dependencies: ["FLibUtils"],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency")
            ]
        ),
    ]
)
