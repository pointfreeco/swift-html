import XCTest

import HtmlSnapshotTestingTests
import HtmlTests

var tests = [XCTestCaseEntry]()
tests += HtmlSnapshotTestingTests.__allTests()
tests += HtmlTests.__allTests()

XCTMain(tests)
