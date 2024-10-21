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

  func testXmlRender() {
    XCTAssertEqual(
      #"""
      <feed><link href="https://www.pointfree.co"></link></feed>
      """#,
      _xmlRender(
        .element("feed", [], .element("link", [("href", "https://www.pointfree.co")], ""))
      )
    )
  }

  func testDiv_InsideDL() {
    let doc = Node.dl(
      .div(
        .dt("Last modified time"),
        .dd("2004-12-23T23:33Z")
      ),
      .div(
        .dt("Recommended update interval"),
        .dd("60s")
      ),
      .div(
        .dt("Authors"),
        .dt("Editors"),
        .dd("Robert Rothman"),
        .dd("Daniel Jackson")
      )
    )

    XCTAssertEqual(
      """
      <dl><div><dt>Last modified time</dt><dd>2004-12-23T23:33Z</dd></div><div><dt>Recommended update interval</dt><dd>60s</dd></div><div><dt>Authors</dt><dt>Editors</dt><dd>Robert Rothman</dd><dd>Daniel Jackson</dd></div></dl>
      """,
      render(doc)
    )
  }
}
