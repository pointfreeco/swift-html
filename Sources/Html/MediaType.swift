public enum MediaType: CustomStringConvertible, Sendable {
  case application(Application)
  case audio(Audio)
  case font(Font)
  case example(String)
  case image(Image)
  case message(String)
  case model(String)
  case multipart(Multipart, boundary: String?)
  case text(Text, charset: Charset?)

  public static let gif = image(.gif)
  public static let javascript = application(.javascript)
  public static let jpeg = image(.jpeg)
  public static let json = application(.json)
  public static let html = text(.html, charset: .utf8)
  public static let mp3 = audio(.mpeg)
  public static let plain = text(.plain, charset: nil)
  public static let png = image(.png)

  public var application: Application? {
    guard case let .application(application) = self else { return nil }
    return application
  }

  public var isText: Bool {
    guard case .text = self else { return false }
    return true
  }

  public var description: String {
    switch self {
    case let .application(application):
      return "application/" + application.rawValue
    case let .audio(audio):
      return "audio/" + audio.rawValue
    case let .font(font):
      return "font/" + font.rawValue
    case let .example(example):
      return "example/" + example
    case let .image(image):
      return "image/" + image.rawValue
    case let .message(message):
      return "message/" + message
    case let .model(model):
      return "model/" + model
    case let .multipart(multipart, boundary):
      let boundaryString = boundary.map { "; boundary=" + $0 } ?? ""
      return "multipart/" + multipart.rawValue + boundaryString
    case let .text(text, charset):
      let charsetString = charset.map { "; charset=" + $0.rawValue } ?? ""
      return "text/" + text.rawValue + charsetString
    }
  }
}

public struct Application: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let javascript = Self(rawValue: "javascript")
  public static let json = Self(rawValue: "json")
  public static let xml = Self(rawValue: "xml")
  public static let xWwwFormUrlencoded = Self(rawValue: "x-www-form-url-encoded")
}

public struct Audio: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let aiff = Self(rawValue: "aiff")
  public static let ogg = Self(rawValue: "ogg")
  public static let mpeg = Self(rawValue: "mpeg")
  public static let wav = Self(rawValue: "wav")
}

public struct Font: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let collection = Self(rawValue: "collection")
  public static let otf = Self(rawValue: "otf")
  public static let sfnt = Self(rawValue: "sfnt")
  public static let ttf = Self(rawValue: "ttf")
  public static let woff = Self(rawValue: "woff")
  public static let woff2 = Self(rawValue: "woff2")
}

public struct Image: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let bmp = Self(rawValue: "bmp")
  public static let jpeg = Self(rawValue: "jpeg")
  public static let gif = Self(rawValue: "gif")
  public static let png = Self(rawValue: "png")
  public static let svg = Self(rawValue: "svg+xml")
  public static let tiff = Self(rawValue: "tiff")
}

public struct Multipart: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let alternative = Self(rawValue: "alternative")
  public static let digest = Self(rawValue: "digest")
  public static let mixed = Self(rawValue: "mixed")
  public static let parallel = Self(rawValue: "parallel")
  public static let formData = Self(rawValue: "form-data")
}

public struct Text: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let css = Self(rawValue: "css")
  public static let csv = Self(rawValue: "csv")
  public static let html = Self(rawValue: "html")
  public static let plain = Self(rawValue: "plain")
}

public struct Video: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let mp4 = Self(rawValue: "mp4")
  public static let ogg = Self(rawValue: "ogg")
  public static let webm = Self(rawValue: "webm")
}

public struct Charset: RawRepresentable, Sendable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let utf8: Self = "utf-8"
  // TODO: http://www.iana.org/assignments/character-sets/character-sets.xhtml
}

extension Charset: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}
