// swift-tools-version:5.3
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
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.10.0"),
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
