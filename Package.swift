// swift-tools-version:4.2
import Foundation
import PackageDescription

let package = Package(
  name: "HtmlUpgrade",
  products: [
    .library(
      name: "HtmlUpgrade",
      targets: ["HtmlUpgrade"]),
    .library(
      name: "HtmlUpgradeSnapshotTesting",
      targets: ["HtmlUpgradeSnapshotTesting"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.5.0"),
  ],
  targets: [
    .target(
      name: "HtmlUpgrade",
      dependencies: []),
    .testTarget(
      name: "HtmlUpgradeTests",
      dependencies: ["HtmlUpgrade"]),
    .target(
      name: "HtmlUpgradeSnapshotTesting",
      dependencies: ["HtmlUpgrade", "SnapshotTesting"]),
    .testTarget(
      name: "HtmlUpgradeSnapshotTestingTests",
      dependencies: ["HtmlUpgradeSnapshotTesting"]),
    ],
  swiftLanguageVersions: [
    .version("5"),
    .v4_2,
  ]
)

if ProcessInfo.processInfo.environment.keys.contains("PF_DEVELOP") {
  package.dependencies.append(
    contentsOf: [
      .package(url: "https://github.com/yonaskolb/XcodeGen.git", from: "2.3.0"),
    ]
  )
}
