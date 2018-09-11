public enum MediaType: CustomStringConvertible {
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

public struct Application: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let javascript = Application(rawValue: "javascript")
  public static let json = Application(rawValue: "json")
  public static let xml = Application(rawValue: "xml")
  public static let xWwwFormUrlencoded = Application(rawValue: "x-www-form-url-encoded")
}

public struct Audio: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let aiff = Audio(rawValue: "aiff")
  public static let ogg = Audio(rawValue: "ogg")
  public static let mpeg = Audio(rawValue: "mpeg")
  public static let wav = Audio(rawValue: "wav")
}

public struct Font: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let collection = Audio(rawValue: "collection")
  public static let otf = Audio(rawValue: "otf")
  public static let sfnt = Audio(rawValue: "sfnt")
  public static let ttf = Audio(rawValue: "ttf")
  public static let woff = Audio(rawValue: "woff")
  public static let woff2 = Audio(rawValue: "woff2")
}

public struct Image: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let bmp = Image(rawValue: "bmp")
  public static let jpeg = Image(rawValue: "jpeg")
  public static let gif = Image(rawValue: "gif")
  public static let png = Image(rawValue: "png")
  public static let svg = Image(rawValue: "svg+xml")
  public static let tiff = Image(rawValue: "tiff")
}

public struct Multipart: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let alternative = Multipart(rawValue: "alternative")
  public static let digest = Multipart(rawValue: "digest")
  public static let mixed = Multipart(rawValue: "mixed")
  public static let parallel = Multipart(rawValue: "parallel")
  public static let formData = Multipart(rawValue: "form-data")
}

public struct Text: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let css = Text(rawValue: "css")
  public static let csv = Text(rawValue: "csv")
  public static let html = Text(rawValue: "html")
  public static let plain = Text(rawValue: "plain")
}

public struct Video: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let mp4 = Video(rawValue: "mp4")
  public static let ogg = Video(rawValue: "ogg")
  public static let webm = Video(rawValue: "webm")
}

public struct Charset: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let utf8: Charset = "utf-8"
  // TODO: http://www.iana.org/assignments/character-sets/character-sets.xhtml
}

extension Charset: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}
