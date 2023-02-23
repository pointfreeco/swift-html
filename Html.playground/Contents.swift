import Html
import PlaygroundSupport
import WebKit

// Some simple CSS for our page. This can be written right inline to our DSL, we could also
// load it from a file on disk, or better yet, we could create another DSL for modeling it 😉
let stylesheet: StaticString = """
body {
  padding: 0.5rem;
  line-height: 1.35;
  font-family: SanFranciscoDisplay-Regular;
}

blockquote {
  border-left: 2px #777 solid;
  font-style: italic;
  color: #777;
  margin-left: 1rem;
  padding-left: 0.5rem;
}

pre {
  background-color: #f3f3f3;
  padding: 0.5rem;
  overflow-x: scroll;
}

code {
  background-color: #f3f3f3;
  padding: 0.25rem;
}
"""

/// A document built in the HTML DSL.
let doc: Node = .document(
  .html(
    .head(
      .style(safe: stylesheet)
    ),
    .body(
      .h1("🗺 HTML"),
      .p("""
A Swift DSL for type-safe, extensible, and transformable HTML documents.
"""
      ),
      .h2("Motivation"),
      .p("""
When building server-side application in Swift it is important to be able to render HTML documents. The current best practice in the community is to use templating languages like Stencil, Mustache, Handlebars, Leaf and others. However, templating languages are inherently unsafe due to the API being stringly typed. The vast majority of errors that can arise in creating a template happen only at runtime, including typos and type mismatches.
"""),
      .p("""
That’s unfortunate because we are used to working in Swift, which is strongly typed, and many potential bugs are discovered at compile time rather than runtime. Our approach is to instead embed HTML documents directly into Swift types so that we immediately get all of the features and safety Swift has to offer.
"""
      ),
      .h2("Examples"),
      .p("""
HTML documents can be created with this library in a tree-like fashion, much like how you might create a nested JSON document:
"""),
      .pre("""
import Html

let document = html([
  body([
    h1(["Welcome!"]),
    p(["You’ve found our site!"])
    ])
  ])
"""),

      .p(
        "Underneath the hood these tag functions ",
        .code("html"),
        ", ", .code("body"),
        ", ", .code("h1"),
        "etc. are just creating and nesting instances of a ",
        .code("Node"),
        " type, which is a simple Swift enum. The cool part is that because ",
        .code("Node"),
        " is just a simple Swift type, we can transform it in all types of intersting ways. For a silly example, what if we wanted to remove all instances of exclamation marks from our document?"
      ),
      .pre("""
func unexclaim(_ node: Node) -> Node {
  switch node {
  case .comment:
    // Don't need to transform HTML comments
    return node

  case .doctype:
    // Don't need to transform doctypes
    return node

  case let .element(tag, attrs, children):
    // Recursively transform all of the children of an element
    return .element(tag, attrs, children.map(unexclaim))

  case let .raw(string), .text(string):
    // Transform text nodes by replacing exclamation marks with periods.
    return string.replacingOccurrences(of: "!", with: ".")
  }
}

unexclaim(document) // Node
"""
      ),

      .p(
        "And of course you can first run the document through the ", .code("unexclaim"), " transformation, and then render it:"
      ),

      .pre("""
render(unexclaim(document))
// <html><body><h1>Welcome.</h1><p>You’ve found our site.</p></body></html>
"""
      )
    )
  )
)

/// A function that "redacts" an HTML document by transforming all text nodes
/// into █-sequences of characters.
func redacted(node: Node) -> Node {
  func redact(string: String) -> String {
    return string
      .split(separator: " ")
      .map { String(repeating: "█", count: $0.count )}
      .joined(separator: " ")
  }

  switch node {
  // Doctypes dont need to be redacted.
  case .doctype:
    return node
  // Comments will be redacted
  case .comment:
    return .comment("")
  // Raw strings will be redacted
  case let .raw(string):
    return .raw(redact(string: string))
  // Style tags will not be redacted
  case .element("style", _, _):
    return node
  // Image tags will have their src removed and background filled with black.
  case let .element("img", attrs, children):
    return .element(
      "img",
      attrs.filter { attrName, _ in attrName != "src" }
        + [("style", "background: black")],
      children
    )
  // All other elements will have their children redacted.
  case let .element(tag, attrs, child):
    return .element(tag, attrs, redacted(node: child))
  // All fragments will have their children redacted.
  case let .fragment(children):
    return .fragment(children.map(redacted(node:)))
  // Text nodes will be redacted
  case let .text(string):
    return .text(redact(string: string))
  }
}

let webView = WKWebView(frame: .init(x: 0, y: 0, width: 370, height: 568))
// Render a normal doc:
let htmlString = render(doc)
// Render a redacted doc:
//let htmlString = render(redacted(node: doc))

webView.loadHTMLString(htmlString, baseURL: nil)
print(htmlString)
PlaygroundPage.current.liveView = webView
