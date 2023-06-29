// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WKWebViewRTC",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "WKWebViewRTC",
            targets: ["WKWebViewRTC"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/stasel/WebRTC.git", .upToNextMajor(from: "114.0.0"))
    ],
    targets: [
        .target(
            name: "WKWebViewRTC",
            dependencies: [
                .product(name: "WebRTC", package: "WebRTC"),
            ],
            resources: [
                Resource.process("Js/jsWKWebViewRTC.js")
            ]
        ),
    ]
)
