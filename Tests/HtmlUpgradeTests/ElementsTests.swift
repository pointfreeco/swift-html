import Html
import XCTest

final class ElementsTests: XCTestCase {
  func testBase64Snapshot() {
    XCTAssertEqual(
      """
<img src="data:image/png;base64,ZnVuY3Rpb25z" alt class="fun">
""",
      render(.img(base64: "ZnVuY3Rpb25z", type: .image(.png), alt: "", attributes: [.class("fun")]))
    )
  }
}

