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
//  return attribs
//    .compactMap { key, value in
//      value.map {
//        " " + escapeAttribute(name: key) + ($0.isEmpty ? "" : "=\"\(escapeAttribute(name: $0))\"")
//      }
//    }
//    .joined()

  let tmp = attribs
    .reduce(into: [String: [String]]()) { accum, keyValue in
      // TODO: use non-empty!
      accum[keyValue.0, default: []] += [keyValue.1].compactMap { $0 }
  }

  return tmp
    .compactMap { key, values in
      let value: String
      switch key {
      case "class":
        value = values.joined(separator: " ")
      case "script":
        value = values.joined(separator: ";")
      default:
        value = values.last ?? ""
      }
      return " " + escapeAttribute(name: key) + (value.isEmpty ? "" : "=\"\(escapeAttribute(name: value))\"")
//      value.map {
//        " " + escapeAttribute(name: key) + ($0.isEmpty ? "" : "=\"\(escapeAttribute(name: $0))\"")
//      }
  }
    .joined()
}

private func escape(html: String) -> String {
  return html
    .replacingOccurrences(of: "&", with: "&amp;")
    .replacingOccurrences(of: "<", with: "&lt;")
}

private func escapeAttribute(name: String) -> String {
  // Attributes have a name and a value. Attribute names must consist of one or more characters other than controls, U+0020 SPACE, U+0022 ("), U+0027 ('), U+003E (>), U+002F (/), U+003D (=), and noncharacters. In the HTML syntax, attribute names, even those for foreign elements, may be written with any mix of ASCII lower and ASCII upper alphas.
  return name
    .replacingOccurrences(of: ">", with: "&gt;")
    .replacingOccurrences(of: "\"", with: "&quot;")
}

private func escapeAttribute(value: String) -> String {
  return value
    .replacingOccurrences(of: "\"", with: "&quot;")
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
