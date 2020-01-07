
public func _debugXmlRender(_ nodes: [Node], config: Config = .pretty) -> String {
  return nodes
    .map { debugRender($0, config: config, voidElements: []) }
    .joined()
}

public func _debugXmlRender(_ node: Node, config: Config = .pretty) -> String {
  return debugRender(node, config: config, voidElements: [])
}
