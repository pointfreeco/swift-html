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
  var rendered = ""
  render(node, output: &rendered)
  return rendered
}

public func render<T>(_ children: [ChildOf<T>]) -> String {
  return children.map(render).joined()
}

public func render<T>(_ child: ChildOf<T>) -> String {
  return render(child.rawValue)
}

public func escapeAttributeValue(_ value: String) -> String {
  return value.replacingOccurrences(of: "\"", with: "&quot;")
}

public func escapeTextNode(text: String) -> String {
  return text
    .replacingOccurrences(of: "&", with: "&amp;")
    .replacingOccurrences(of: "<", with: "&lt;")
}

public func escapeDoctype(_ doctype: String) -> String {
  return doctype.replacingOccurrences(of: ">", with: "&gt;")
}

public func escapeHtmlComment(_ comment: String) -> String {
  return comment.replacingOccurrences(of: "-->", with: "--&gt;")
}

/// A set of self-closing "void" elements that should not contain child nodes.
public let voidElements: Set<String> = [
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

private func render(_ node: Node, output: inout String) {
  switch node {
  case let .comment(string):
    output.append("<!-- \(escapeHtmlComment(string)) -->")
  case let .doctype(string):
    output.append("<!DOCTYPE \(escapeDoctype(string))>")
  case let .element(tag, attribs, children):
    let renderedAttribs = render(attribs)
    let openTag = "<" + tag + renderedAttribs + ">"
    output.append(
      children.isEmpty && voidElements.contains(tag)
        ? openTag
        : openTag + render(children) + "</" + tag + ">"
    )
  case let .text(string):
    output.append(escapeTextNode(text: string))
  case let .raw(string):
    output.append(string)
  }
}

private func render(_ attribs: [(String, String?)]) -> String {
  return attribs
    .compactMap { key, value in
      value.map {
        " " + key + ($0.isEmpty ? "" : "=\"\(escapeAttributeValue($0))\"")
      }
    }
    .joined()
}
