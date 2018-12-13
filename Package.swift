// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "Html",
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Html",
      dependencies: []),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["Html"]),
    ]
)
