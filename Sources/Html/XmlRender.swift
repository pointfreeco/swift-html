/// Renders an array of nodes to an XML string.
///
/// - Parameter nodes: An array of nodes.
public func _xmlRender(_ nodes: [Node]) -> String {
  return nodes.reduce(into: "") { $0.append(_xmlRender($1)) }
}

/// Renders a node to an XML string.
///
/// - Parameter node: A node.
public func _xmlRender(_ node: Node) -> String {
  var rendered = ""
  render(node, into: &rendered, voidElements: [])
  return rendered
}
