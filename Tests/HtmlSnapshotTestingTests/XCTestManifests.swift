import XCTest

extension AriaTests {
    static let __allTests = [
        ("testSnapshots", testSnapshots),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AriaTests.__allTests),
    ]
}
#endif
