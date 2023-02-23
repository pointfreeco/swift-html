import Html
import XCTest

final class StringInterpolationTests: XCTestCase {
  func testStringInterpolation() {
    let name = "Blob"

    XCTAssertEqual(
      """
      <div>Hello <strong>Blob</strong></div>
      """, render(Node.div("Hello \(.strong(.text(name)))")))

    XCTAssertEqual(
      """
      <div>Hello Blob</div>
      """, render(Node.div("Hello \(name)")))
  }

  func testStringInterpolationEscaping() {
    let xssName = "Blob<script>alert();</script>"

    XCTAssertEqual(
      """
      <div>Hello Blob&lt;script>alert();&lt;/script></div>
      """, render(Node.div("Hello \(xssName)")))

    XCTAssertEqual(
      """
      <div>Hello Blob<script>alert();</script></div>
      """, render(Node.div("Hello \(.raw(xssName))")))

    XCTAssertEqual(
      """
      <div>Hello <strong>Blob&lt;script>alert();&lt;/script></strong></div>
      """, render(Node.div("Hello \(.strong(.text(xssName)))")))
  }
}
