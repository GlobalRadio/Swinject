// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Swinject",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "Swinject",
                 targets: ["Swinject"]),
        .library(name: "Swinject-Dynamic",
                 type: .dynamic,
                 targets: ["Swinject"]),
    ],
    targets: [
        .target(name: "Swinject",
                path: "Sources"),
        .testTarget(name: "SwinjectTests",
                    dependencies: ["Swinject"]),
    ]
)
