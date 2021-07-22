/// Renders an array of nodes to an HTML string.
///
/// - Parameter nodes: An array of nodes.
public func render(_ nodes: [Node], voidElements: Set<String> = Html.voidElements) -> String {
  return nodes.reduce(into: "") { $0.append(render($1, voidElements: voidElements)) }
}

/// Renders a node to an HTML string.
///
/// - Parameter node: A node.
public func render(_ node: Node, voidElements: Set<String> = Html.voidElements) -> String {
  var rendered = ""
  render(node, into: &rendered, voidElements: voidElements)
  return rendered
}

public func render<T>(_ children: [ChildOf<T>], voidElements: Set<String> = Html.voidElements) -> String {
  return children.reduce(into: "") { $0.append(render($1, voidElements: voidElements)) }
}

public func render<T>(_ child: ChildOf<T>, voidElements: Set<String> = Html.voidElements) -> String {
  return render(child.rawValue, voidElements: voidElements)
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

func render(_ node: Node, into output: inout String, voidElements: Set<String>) {
  switch node {
  case let .comment(string):
    output.append("<!--")
    output.append(escapeHtmlComment(string))
    output.append("-->")
  case let .doctype(string):
    output.append("<!DOCTYPE ")
    output.append(escapeDoctype(string))
    output.append(">")
  case let .element(tag, attribs, children):
    output.append("<")
    output.append(tag)
    render(attribs, into: &output)
    output.append(">")
    if !children.isEmpty || !voidElements.contains(tag) {
      output.append(render(children, voidElements: voidElements))
      output.append("</")
      output.append(tag)
      output.append(">")
    }
  case let .fragment(children):
    output.append(render(children, voidElements: voidElements))
  case let .text(string):
    output.append(escapeTextNode(text: string))
  case let .raw(string):
    output.append(string)
  }
}

func render(_ attribs: [(String, String?)], into output: inout String) {
  attribs
    .forEach { key, value in
      guard let value = value else { return }
      output.append(" ")
      output.append(key)
      if !value.isEmpty {
        output.append("=\"")
        output.append(escapeAttributeValue(value))
        output.append("\"")
      }
    }
}
