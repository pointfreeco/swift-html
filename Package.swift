// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "Html",
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
    .library(
      name: "HtmlDebugRender",
      targets: ["HtmlDebugRender"]),
    .library(
      name: "HtmlSnapshotTesting",
      targets: ["HtmlSnapshotTesting"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
      from: "1.1.0"),
  ],
  targets: [
    .target(
      name: "Html",
      dependencies: []),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["Html"]),
    .target(
      name: "HtmlDebugRender",
      dependencies: ["Html"]),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["HtmlDebugRender"]),
    .target(
      name: "HtmlSnapshotTesting",
      dependencies: ["HtmlDebugRender"]),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["HtmlSnapshotTesting"]),
    ]
)
