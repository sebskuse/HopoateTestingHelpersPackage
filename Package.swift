// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HopoateTestingHelpersPackage",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v5)
    ],
    products: [
        .library(name: "HopoateTestingHelpersPackage", type: .dynamic, targets: ["HopoateTestingHelpersPackage"])
    ],
    dependencies: [
        .package(name: "Hopoate", url: "https://github.com/darjeelingsteve/hopoate", from: "1.8.0")
    ],
    targets: [
        .target(
            name: "HopoateTestingHelpersPackage",
            dependencies: [.product(name: "Hopoate", package: "Hopoate")])
    ]
)
