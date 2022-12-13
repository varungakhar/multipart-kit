// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "AlterMultipartKit",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "AlterMultipartKit", targets: ["AlterMultipartKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.2.0"),
    ],
    targets: [
        .target(name: "CMultipartParser"),
        .target(name: "AlterMultipartKit", dependencies: [
            .product(name: "NIO", package: "swift-nio"),
            .product(name: "NIOHTTP1", package: "swift-nio"),
            .target(name: "CMultipartParser"),
        ]),
        .testTarget(name: "AlterMultipartKitTests", dependencies: ["AlterMultipartKit"]),
    ]
)
