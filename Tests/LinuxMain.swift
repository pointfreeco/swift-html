import XCTest

import HtmlTests

var tests = [XCTestCaseEntry]()
tests += HtmlTests.__allTests()

XCTMain(tests)
