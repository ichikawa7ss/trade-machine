// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Features",
    platforms: [
        .macOS(.v11),
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "AppFeature",
            targets: [
                "AppFeature",
            ]
        ),
        // 追加するモジュールがあれば以下に追加する
    ],
    dependencies: [
        // Local
        .package(name: "DesignSystem", path: "../DesignSystem"),

        // TCA
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.40.2"),
        .package(url: "https://github.com/pointfreeco/combine-schedulers", from: "0.7.4"),
        .package(url: "https://github.com/pointfreeco/swift-case-paths", from: "0.8.0"),
        .package(url: "https://github.com/pointfreeco/swift-custom-dump", from: "0.3.0"),
        .package(url: "https://github.com/pointfreeco/swift-identified-collections", from: "0.3.2"),
        .package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay", from: "0.3.2"),
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                // Local
                .product(name: "Representable", package: "DesignSystem"),

                // Remote
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "CasePaths", package: "swift-case-paths"),
                .product(name: "CombineSchedulers", package: "combine-schedulers"),
                .product(name: "CustomDump", package: "swift-custom-dump"),
                .product(name: "IdentifiedCollections", package: "swift-identified-collections"),
                .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay"),
            ]
        ),
    ]
)
