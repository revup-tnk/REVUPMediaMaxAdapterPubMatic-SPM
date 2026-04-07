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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterPubMaticTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterPubMatic"),
                .target(name: "REVUPMediaMaxAdapterPubMaticMediationAdapter"),
                .target(name: "OpenWrapSDK"),
                .target(name: "OMSDK_Pubmatic"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMatic",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterPubMatic.zip",
            checksum: "88808c2681313380e2d6fe970f5228fdb0c1a2939c9552b35684fef7b6b64e2f"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMaticMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationPubMaticAdapter.xcframework.zip",
            checksum: "99e28e74f0194399241d88f3807d6aa8ea7a8343424f88eb8e8bb661d137ba6a"
        ),
        .binaryTarget(
            name: "OpenWrapSDK",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/OpenWrapSDK.xcframework.zip",
            checksum: "71029ead36a01482354fd47a824755fc5967d7dc3a203bf30d1093b58b056059"
        ),
        .binaryTarget(
            name: "OMSDK_Pubmatic",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/OMSDK_Pubmatic.xcframework.zip",
            checksum: "1e7bc27588037ef3d4de478c0dc9e7231eefbeda5e51e4d5e1fa8d2d084dfefd"
        ),
    ]
)
