// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "swift-html",
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
    .library(
      name: "HtmlSnapshotTesting",
      targets: ["HtmlSnapshotTesting"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pimms/swift-snapshot-testing",
      branch: "optimization"
    ),
  ],
  targets: [
    .target(
      name: "Html"
    ),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["Html"]
    ),
    .target(
      name: "HtmlSnapshotTesting",
      dependencies: [
        "Html",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ]
    ),
    .testTarget(
      name: "HtmlSnapshotTestingTests",
      dependencies: ["HtmlSnapshotTesting"],
      exclude: [
        "__Snapshots__",
      ]
    ),
  ]
)
