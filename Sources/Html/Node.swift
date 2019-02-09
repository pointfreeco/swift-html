/// The basic unit of an HTML tree.
public enum Node {
  /// Represents a renderable comment.
  case comment(String)

  /// Represents an HTML DOCTYPE.
  case doctype(String)

  /// Represents an element node with a tag name, an array of attributes, and an array of child nodes.
  indirect case element(String, [(key: String, value: String?)], Node)

  /// Represents an array of nodes.
  case fragment([Node])

  /// An unsafe escape hatch: represents raw text that should not be escaped by a renderer.
  case raw(String)

  /// Represents a text node that can be escaped when rendered.
  case text(String)
}

extension Node {
  public var isEmpty: Bool {
    switch self {
    case let .comment(string), let .doctype(string), let .raw(string), let .text(string):
      return string.isEmpty
    case .element:
      return false
    case let .fragment(children):
      return children.allSatisfy { $0.isEmpty }
    }
  }
}

extension Node: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: Node...) {
    self = .fragment(elements)
  }
}

extension Node: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .text(value)
  }
}

/// Default HTML DOCTYPE.
public let doctype: Node = .doctype("html")

/// A root document node including the default HTML DOCTYPE.
public func document(_ children: Node...) -> Node {
  return .fragment([doctype] + children)
}
