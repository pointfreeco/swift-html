import Html
import SnapshotTesting

extension Snapshotting where Value == [Node], Format == String {
  public static var html: Snapshotting {
    var snapshotting = SimplySnapshotting.lines
      .pullback { (nodes: [Node]) in debugRender(nodes) }
    snapshotting.pathExtension = "html"
    return snapshotting
  }
}

extension Snapshotting where Value == Node, Format == String {
  public static let html = Snapshotting<[Node], String>.html.pullback { [$0] }
}
