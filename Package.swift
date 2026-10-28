// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterPubMatic",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterPubMatic",
            targets: ["REVUPMediaMaxAdapterPubMaticTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-PubMatic.git", exact: "5040100.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterPubMaticTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterPubMatic"),
                .product(name: "AppLovinMediationPubMaticAdapter", package: "AppLovin-MAX-Swift-Package-PubMatic"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterPubMatic",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterPubMatic.zip",
            checksum: "61018cb1d48f48ccccf286e0c426be5aa1e76fa81cd93f65d025ebb189d7a171"
        ),
    ]
)
