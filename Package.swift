// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HopoateTestingHelpersPackage",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "HopoateTestingHelpersPackage", type: .dynamic, targets: ["HopoateTestingHelpersPackage"])
    ],
    dependencies: [
        .package(name: "Hopoate", url: "https://github.com/sebskuse/hopoate", branch: "isolated-dependencies")
    ],
    targets: [
        .target(
            name: "HopoateTestingHelpersPackage",
            dependencies: [.product(name: "Hopoate", package: "Hopoate")])
    ]
)
