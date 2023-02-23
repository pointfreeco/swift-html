// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "swift-html",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
  ],
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
    .library(
      name: "HtmlSnapshotTesting",
      targets: ["HtmlSnapshotTesting"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.11.0")
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
        "__Snapshots__"
      ]
    ),
  ]
)
