// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterPubMatic",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterPubMatic",
            targets: ["REVUPMediaMaxAdapterPubMaticTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", exact: "5.1.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterPubMaticTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterPubMatic"),
                .target(name: "AppLovinMediationPubMaticAdapter"),
                .product(name: "OpenWrapSDK", package: "OpenWrapSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMatic",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterPubMatic.zip",
            checksum: "59ba29938442ec371ac817faa8a129352cab2efab9edfb7001a7bb558961019b"
        ),
        .binaryTarget(
            name: "AppLovinMediationPubMaticAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/pubmatic-adapter/AppLovinMediationPubMaticAdapter-5.1.1.0.zip",
            checksum: "c722f785f79eee5c133fc14785865e274a549cb8dad90e8b3df474e650b8a07b"
        )
    ]
)
