import XCTest

import HtmlTests
import HtmlSnapshotTestingTests

var tests = [XCTestCaseEntry]()
tests += HtmlTests.__allTests()
tests += HtmlSnapshotTestingTests.__allTests()

XCTMain(tests)
