// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "Html",
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
    .library(
      name: "HtmlSnapshotTesting",
      targets: ["HtmlSnapshotTesting"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.1.0"),
    .package(url: "https://github.com/yonaskolb/XcodeGen.git", from: "2.2.0"),
  ],
  targets: [
    .target(
      name: "Html",
      dependencies: []),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["Html"]),
    .target(
      name: "HtmlSnapshotTesting",
      dependencies: ["Html", "SnapshotTesting"]),
    .testTarget(
      name: "HtmlSnapshotTestingTests",
      dependencies: ["HtmlSnapshotTesting"]),
    ]
)
