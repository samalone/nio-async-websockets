// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NIOAsyncWebSockets",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .watchOS(.v10),
        .tvOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NIOAsyncWebSockets",
            targets: ["NIOAsyncWebSockets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.12.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NIOAsyncWebSockets",
            dependencies: [
                // These dependencies are used by the WebSocketActorSystem
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "NIOHTTP1", package: "swift-nio"),
                .product(name: "NIOWebSocket", package: "swift-nio"),
                .product(name: "NIOPosix", package: "swift-nio"),
//                .product(name: "NIOTransportServices", package: "swift-nio-transport-services"),
//                .product(name: "Logging", package: "swift-log"),
            ]
        ),
        .testTarget(
            name: "NIOAsyncWebSocketsTests",
            dependencies: ["NIOAsyncWebSockets"]),
    ]
)
