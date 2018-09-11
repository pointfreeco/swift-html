/// Renders an array of nodes to an HTML string.
///
/// - Parameter nodes: An array of nodes.
public func render(_ nodes: [Node]) -> String {
  return nodes.map(render).joined()
}

/// Renders a node to an HTML string.
///
/// - Parameter node: A node.
public func render(_ node: Node) -> String {
  switch node {
  case let .comment(string):
    return "<!-- \(string.replacingOccurrences(of: "-->", with: "--&gt;")) -->"
  case let .doctype(string):
    return "<!DOCTYPE \(string.replacingOccurrences(of: ">", with: "&gt;"))>"
  case let .element(tag, attribs, children):
    let renderedAttribs = render(attribs)
    guard !children.isEmpty else {
      return "<" + tag + renderedAttribs + (voidElements.contains(tag) ? ">" : "/>")
    }
    return "<" + tag + renderedAttribs + ">" + render(children) + "</" + tag + ">"
  case let .text(string):
    return escape(html: string)
  case let .raw(string):
    return string
  }
}

public func render<T>(_ children: [ChildOf<T>]) -> String {
  return children.map(render).joined()
}

public func render<T>(_ child: ChildOf<T>) -> String {
  return render(child.rawValue)
}

private func render(_ attribs: [(String, String?)]) -> String {
  return attribs
    .compactMap { key, value in
      value.map {
        " " + key + ($0.isEmpty ? "" : "=\"\($0.replacingOccurrences(of: "\"", with: "&quot;"))\"")
      }
    }
    .joined()
}

private func escape(html: String) -> String {
  return html
    .replacingOccurrences(of: "&", with: "&amp;")
    .replacingOccurrences(of: "<", with: "&lt;")
}

/// A set of self-closing "void" elements that should not contain child nodes.
private let voidElements: Set<String> = [
  "area",
  "base",
  "br",
  "col",
  "embed",
  "hr",
  "img",
  "input",
  "link",
  "meta",
  "param",
  "source",
  "track",
  "wbr"
]
