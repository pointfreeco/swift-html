extension Attribute {
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

  public static func align(_ value: Alignment) -> Attribute {
    return .init("align", value.rawValue)
  }

  public static func border(_ value: Int) -> Attribute {
    return .init("border", String(value))
  }

  public static func height(_ value: Html4Size) -> Attribute {
    return .init("height", value.rawValue)
  }

  public enum VerticalAlignment: String {
    case top
    case middle
    case bottom
    case baseline
  }

  public static func valign(_ value: VerticalAlignment) -> Attribute {
    return .init("valign", value.rawValue)
  }

  public static func width(_ value: Html4Size) -> Attribute {
    return .init("width", value.rawValue)
  }
}

extension Attribute where Element == Tag.Table {
  public static func cellpadding(_ value: Int) -> Attribute {
    return .init("cellpadding", String(value))
  }

  public static func cellspacing(_ value: Int) -> Attribute {
    return .init("cellspacing", String(value))
  }
}
