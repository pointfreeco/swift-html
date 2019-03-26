import Html
import XCTest

final class StringInterpolationTests: XCTestCase {
  func testStringInterpolation() {
    let name = "Blob<script>alert();</script>"

    XCTAssertEqual("""
<div>Hello Blob&lt;script>alert();&lt;/script></div>
""", render(Node.div("Hello \(name)")))

    XCTAssertEqual("""
<div>Hello Blob<script>alert();</script></div>
""", render(Node.div("Hello \(.raw(name))")))
  }
}
