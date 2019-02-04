/// The basic unit of an HTML tree.
public enum Node {
  /// Represents a renderable comment.
  case comment(String)

  /// Represents an HTML DOCTYPE.
  case doctype(String)

  /// Represents an element node with a tag name, an array of attributes, and an array of child nodes.
  case element(String, [(key: String, value: String?)], [Node])

  /// An unsafe escape hatch: represents raw text that should not be escaped by a renderer.
  case raw(String)

  /// Represents a text node that can be escaped when rendered.
  case text(String)
}

extension Node: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .text(value)
  }
}

/// Default HTML DOCTYPE.
public let doctype: Node = .doctype("html")
