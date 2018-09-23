import Html
import XCTest

final class XssTests: XCTestCase {
  func testAttributes() {
    let attr = Attribute<Tag.A>("></a><script>alert('!');</script>", "foo")

    XCTAssertEqual(
      "<a href=\"/user/foo&quot; onmouseover=&quot;alert(1)\">XSS</a>",
      render(a([attr], ["XSS"]))
    )

    XCTAssertEqual(
      "<a href=\"/user/foo&quot; onmouseover=&quot;alert(1)\">XSS</a>",
      render(a([href("/user/foo\" onmouseover=\"alert(1)")], ["XSS"]))
    )
  }
}
