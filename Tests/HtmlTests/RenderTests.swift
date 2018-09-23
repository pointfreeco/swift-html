import Html
import XCTest

final class RenderTests: XCTestCase {
  func testMediaType() {

    let doc = div(
      [Html.class("mb-1"), Html.class("mt-1")],
      ["Hello"]
    )

    XCTAssertEqual("", render(doc))
  }
}
