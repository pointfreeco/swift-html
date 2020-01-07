public struct Config {
  public let indentation: String
  public let newline: String

  public init(indentation: String, newline: String) {
    self.indentation = indentation
    self.newline = newline
  }

  public static let pretty = Config(indentation: "  ", newline: "\n")
}

public func debugRender(_ nodes: [Node], config: Config = .pretty) -> String {
  return nodes
    .map { debugRender($0, config: config, voidElements: Html.voidElements) }
    .joined()
}

public func debugRender(_ node: Node, config: Config = .pretty) -> String {
  return debugRender(node, config: config, voidElements: Html.voidElements)
}

func debugRender(_ node: Node, config: Config = .pretty, voidElements: Set<String>) -> String {
  func debugRenderHelp(_ node: Node, into output: inout String, config: Config, indentation: String) {
    func renderValues( _ values: String, into output: inout String, separator: Character?, indentBy: Int) {
      guard let separator = separator else {
        output.append(values)
        return
      }
      let values = values.split(separator: separator)
      if let v = values.first {
        output.append(contentsOf: v)
      }
      for v in values.dropFirst() {
        if separator != " " {
          output.append(separator)
        }
        output.append(config.newline)
        output.append(String(repeating: " ", count: indentBy + 1))
        output.append(contentsOf: v)
      }
    }

    func separator(forKey key: String) -> Character? {
      switch key {
      case "class":
        return " "
      case "style":
        return ";"
      default:
        return nil
      }
    }

    switch node {
    case let .comment(string):
      output.append(indentation)
      output.append("<!-- ")
      output.append(string)
      output.append(" -->")
      output.append(config.newline)
    case let .doctype(string):
      output.append(indentation)
      output.append("<!DOCTYPE ")
      output.append(string)
      output.append(">")
      output.append(config.newline)
    case let .element(tag, attrs, children):
      output.append(indentation)
      output.append("<")
      output.append(tag)
      var renderedAttr = false
      let keyIndentation = String(repeating: " ", count: indentation.count + tag.count + 2)
      for (k, v) in attrs {
        guard let v = v else { continue }
        if renderedAttr {
          output.append(config.newline)
          output.append(keyIndentation)
        } else {
          renderedAttr = true
          output.append(" ")
        }
        output.append(k)
        guard !v.isEmpty else { continue }
        output.append("=\"")
        let valueIndentation = keyIndentation.count + k.count + 1
        renderValues(v, into: &output, separator: separator(forKey: k), indentBy: valueIndentation)
        output.append("\"")
      }
      output.append(">")
      output.append(config.newline)
      guard !children.isEmpty || !voidElements.contains(tag) else { return }
      debugRenderHelp(children, into: &output, config: config, indentation: indentation + config.indentation)
      output.append(indentation)
      output.append("</")
      output.append(tag)
      output.append(">")
      output.append(config.newline)
    case let .fragment(children):
      for node in children {
        debugRenderHelp(node, into: &output, config: config, indentation: indentation)
      }
    case let .raw(string), let .text(string):
      guard !string.isEmpty else { return }
      output.append(indentation)
      output.append(string)
      output.append(config.newline)
    }
  }

  var string = ""
  debugRenderHelp(node, into: &string, config: config, indentation: "")
  return string
}
