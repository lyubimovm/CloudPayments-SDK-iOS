// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudPayments",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "CloudPayments",
            targets: ["CloudPayments"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.2.0"))
    ],
    targets: [
        .target(
            name: "CloudPayments",
            dependencies: [
                "Alamofire",
                "ObjectMapper"
            ],
            path: "sdk/sdk/",
            resources: [
                .process("Resources/Assets.xcassets"),
                .process("Resources/PaymentForm.storyboard")
            ]
        )
    ]
)
