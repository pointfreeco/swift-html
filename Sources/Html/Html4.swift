public enum Html4Size {
  case px(Int)
  case pct(Int)

  public var rawValue: String {
    switch self {
    case let .px(size):
      return "\(size)"
    case let .pct(size):
      return "\(size)%"
    }
  }
}

public enum Alignment: String {
  case left
  case right
  case center
  case justify
}

public func align<T>(_ value: Alignment) -> Attribute<T> {
  return .init("align", value.rawValue)
}

public func border<T>(_ value: Int) -> Attribute<T> {
  return .init("border", String(value))
}

public func cellpadding(_ value: Int) -> Attribute<Tag.Table> {
  return .init("cellpadding", String(value))
}

public func cellspacing(_ value: Int) -> Attribute<Tag.Table> {
  return .init("cellspacing", String(value))
}

public func height<T>(_ value: Html4Size) -> Attribute<T> {
  return .init("height", value.rawValue)
}

public enum VerticalAlignment: String {
  case top
  case middle
  case bottom
  case baseline
}

public func valign<T>(_ value: VerticalAlignment) -> Attribute<T> {
  return .init("valign", value.rawValue)
}

public func width<T>(_ value: Html4Size) -> Attribute<T> {
  return .init("width", value.rawValue)
}
