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
  /// Default HTML DOCTYPE.
  public static let doctype: Node = .doctype("html")

  /// A root document node including the default HTML DOCTYPE.
  public static func document(_ children: Node...) -> Node {
    return .fragment([doctype] + children)
  }

  public mutating func append(_ node: Node) {
    switch (self, node) {
    case (.fragment(var nodes), .fragment(let moreNodes)):
      nodes.append(contentsOf: moreNodes)
      self = .fragment(nodes)
    case (.fragment(var nodes), let node):
      nodes.append(node)
      self = .fragment(nodes)
    case (let node, .fragment(var nodes)):
      nodes.insert(node, at: nodes.startIndex)
      self = .fragment(nodes)
    case (.comment(var comment), .comment(let anotherComment)):
      comment.append(contentsOf: anotherComment)
      self = .comment(comment)
    case (.raw(var raw), .raw(let anotherRaw)):
      raw.append(contentsOf: anotherRaw)
      self = .raw(raw)
    case (.text(var text), .text(let anotherText)):
      text.append(contentsOf: anotherText)
      self = .text(text)
    default:
      self = .fragment([self, node])
    }
  }

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

extension Node: Equatable {
  public static func == (lhs: Node, rhs: Node) -> Bool {
    switch (lhs, rhs) {
    case
    let (.comment(lhs), .comment(rhs)),
    let (.doctype(lhs), .doctype(rhs)),
    let (.raw(lhs), .raw(rhs)),
    let (.text(lhs), .text(rhs)):
      return lhs == rhs
    case let (
      .element(lhsTag, lhsAttributes, lhsChildren),
      .element(rhsTag, rhsAttributes, rhsChildren)):

      return lhsTag == rhsTag
        && zip(lhsAttributes, rhsAttributes).allSatisfy { $0 == $1 }
        && lhsChildren == rhsChildren
    case let (.fragment(lhs), .fragment(rhs)):
      return lhs == rhs
    default:
      return false
    }
  }
}

extension Node: Hashable {
  public func hash(into hasher: inout Hasher) {
    enum HashingTag: String {
      case comment, doctype, element, fragment, raw, text
    }

    switch self {
    case let .comment(comment):
      hasher.combine(HashingTag.comment)
      hasher.combine(comment)
    case let .doctype(doctype):
      hasher.combine(HashingTag.doctype)
      hasher.combine(doctype)
    case let .element(tag, attributes, children):
      hasher.combine(HashingTag.element)
      hasher.combine(tag)
      attributes.forEach {
        hasher.combine($0)
        hasher.combine($1)
      }
      hasher.combine(children)
    case let .fragment(nodes):
      hasher.combine(HashingTag.fragment)
      hasher.combine(nodes)
    case let .raw(raw):
      hasher.combine(HashingTag.raw)
      hasher.combine(raw)
    case let .text(text):
      hasher.combine(HashingTag.text)
      hasher.combine(text)
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

#if swift(>=5.0)
public struct NodeStringInterpolation: StringInterpolationProtocol {
  var node: Node

  public init(literalCapacity: Int, interpolationCount: Int) {
    self.node = .fragment([])
  }

  public mutating func appendInterpolation(_ value: Node) {
    self.node.append(value)
  }

  public mutating func appendInterpolation(_ value: String) {
    self.node.append(.text(value))
  }

  public mutating func appendLiteral(_ literal: String) {
    self.node.append(.text(literal))
  }
}

extension Node: ExpressibleByStringInterpolation {
  public init(stringInterpolation: NodeStringInterpolation) {
    self = stringInterpolation.node
  }
}
#endif
