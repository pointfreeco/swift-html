import XCTest

extension SnapshotTestingTests {
    static let __allTests = [
        ("testComplexHtml", testComplexHtml),
        ("testSnapshots", testSnapshots),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SnapshotTestingTests.__allTests),
    ]
}
#endif
