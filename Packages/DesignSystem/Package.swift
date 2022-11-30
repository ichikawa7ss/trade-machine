// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DesignSystem",
  platforms: [
    .macOS(.v11),
    .iOS(.v15),
  ],
  products: [
    .library(
      name: "Representable",
      targets: [
        "Representable",
      ]
    ),
  ],
  dependencies: [
    // Lottie
    .package(url: "https://github.com/airbnb/lottie-ios", from: "3.4.3"),
  ],
  targets: [
    .target(
      name: "Representable",
      dependencies: [
        // Remote
        .product(name: "Lottie", package: "lottie-ios"),
      ]
    ),
  ]
)
