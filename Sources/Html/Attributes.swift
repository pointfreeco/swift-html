import Foundation

public struct Attribute<Element> {
  public let key: String
  public let value: String?

  public init(_ key: String, _ value: String?) {
    self.key = key
    self.value = value
  }
}

/// Alternative label to use for the header cell when referencing the cell in other contexts.
///
/// - Parameter value: Alternative label to use for the header cell when referencing the cell in other contexts.
public func abbr(_ value: String) -> Attribute<Tag.Th> {
  return .init("abbr", value)
}

/// All HTML elements may have the `accesskey` content attribute set. The `accesskey` attribute's value is used by the user agent as a guide for creating a keyboard shortcut that activates or focuses the element.
///
/// - Parameter value: Used by the user agent as a guide for creating a keyboard shortcut that activates or focuses the element.
public func accesskey<T>(_ value: Character) -> Attribute<T> {
  return .init("accesskey", String(value))
}

/// URL to use for form submission.
///
/// - Parameter value: URL to use for form submission.
public func action(_ value: String) -> Attribute<Tag.Form> {
  return .init("action", value)
}

/// Conforming elements can have an `alt` attribute. Includes `<area>`, `<img>` and `<input>` elements.
public protocol HasAlt {}

extension Tag.Area: HasAlt {}
extension Tag.Img: HasAlt {}
extension Tag.Input: HasAlt {}

/// Replacement text for use when images are not available. For `<area>`, `<img>`, and `<input>` elements.
///
/// - Parameter value: Replacement text for use when images are not available.
public func alt<T: HasAlt>(_ value: String) -> Attribute<T> {
  return .init("alt", value)
}

/// Execute script in parallel.
///
/// - Parameter value: Execute script in parallel.
public func async(_ value: Bool) -> Attribute<Tag.Script> {
  return .init("async", value ? "" : nil)
}

/// Conforming elements can have an `autofocus` attribute. Includes `<button>`, `<input>`, `<select>`, and `<textarea>` elements.
public protocol HasAutofocus {}

extension Tag.Button: HasAutofocus {}
extension Tag.Input: HasAutofocus {}
extension Tag.Select: HasAutofocus {}
extension Tag.Textarea: HasAutofocus {}

/// The `autofocus` content attribute allows the author to indicate that a control is to be focused as soon as the page is loaded or as soon as the `dialog` within which it finds itself is shown, allowing the user to just start typing without having to manually focus the main control.
///
/// - Parameter value: Automatically focus the form control when the page is loaded.
public func autofocus<T: HasAutofocus>(_ value: Bool) -> Attribute<T> {
  return .init("autofocus", value ? "" : nil)
}

/// Conforming elements can have an `autoplay` attribute. Includes `<audio>` and `<video>` elements.
public protocol HasAutoplay {}

extension Tag.Audio: HasAutoplay {}
extension Tag.Video: HasAutoplay {}

/// Hint that the media resource can be started automatically when the page is loaded.
///
/// - Parameter value: Hint that the media resource can be started automatically when the page is loaded.
public func autoplay<T: HasAutoplay>(_ value: Bool) -> Attribute<T> {
  return .init("autoplay", value ? "" : nil)
}

/// Conforming elements can have a `charset` attribute. Includes `<meta>` and `<script>` elements.
public protocol HasCharset {}

extension Tag.Meta: HasCharset {}
extension Tag.Script: HasCharset {}

/// Character encoding declaration.
///
/// - Parameter value: A character encoding declaration.
public func charset<T: HasCharset>(_ value: Charset) -> Attribute<T> {
  return .init("charset", value.rawValue)
}

/// Whether the command or control is checked.
///
/// - Parameter value: Whether the command or control is checked.
public func checked(_ value: Bool) -> Attribute<Tag.Input> {
  return .init("checked", value ? "" : nil)
}

/// Conforming elements can have a `cite` attribute. Includes `<blockquote>`, `<del>`, `<ins>`, and `<q>` elements.
public protocol HasCite {}

extension Tag.Blockquote: HasCite {}
extension Tag.Del: HasCite {}
extension Tag.Ins: HasCite {}
extension Tag.Q: HasCite {}

/// Link to the source of the quotation.
///
/// - Parameter value: Link to the source of the quotation or more information about the edit.
public func cite<T: HasCite>(_ value: String) -> Attribute<T> {
  return .init("cite", value)
}

/// When specified on HTML elements, the `class` attribute must have a value that is a set of space-separated tokens representing the various classes that the element belongs to.
///
/// - Parameter value: A set of space-separated tokens.
public func `class`<T>(_ value: String) -> Attribute<T> {
  return .init("class", value)
}

/// Maximum number of characters per line.
///
/// - Parameter value: Maximum number of characters per line.
public func cols(_ value: Int) -> Attribute<Tag.Textarea> {
  return .init("cols", String(value))
}

/// Conforming elements can have a `colspan` attribute. Includes `<td>` and `<th>` elements.
public protocol HasColspan {}

extension Tag.Td: HasColspan {}
extension Tag.Th: HasColspan {}

/// Number of columns that the cell is to span.
///
/// - Parameter value: Number of columns that the cell is to span.
public func colspan<T: HasColspan>(_ value: Int) -> Attribute<T> {
  return .init("colspan", String(value))
}

/// Value of the `<meta>` element.
///
/// - Parameter value: Value of the element.
public func content(_ value: String) -> Attribute<Tag.Meta> {
  return .init("content", value)
}

public enum Contenteditable: String {
  case `true` = ""
  case `false`
  case inherit
}

extension Contenteditable: ExpressibleByBooleanLiteral {
  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

/// Make a document region editable.
///
/// - Parameter value: Should a document region be editable.
public func contenteditable<T>(_ value: Contenteditable) -> Attribute<T> {
  return .init("contenteditable", value == .inherit ? nil : value.rawValue)
}

/// Conforming elements can have a `controls` attribute. Includes `<audio>` and `<video>` elements.
public protocol HasControls {}

extension Tag.Audio: HasControls {}
extension Tag.Video: HasControls {}

/// If present, it indicates that the author has not provided a scripted controller and would like the user agent to provide its own set of controls.
///
/// - Parameter value: Show user agent controls.
public func controls<T: HasControls>(_ value: Bool) -> Attribute<T> {
  return .init("controls", value ? "" : nil)
}

/// Conforming elements can have a `crossorigin` attribute. Includes `<img>` and `<script>` elements.
public protocol HasCrossorigin {}

extension Tag.Img: HasCrossorigin {}
extension Tag.Script: HasCrossorigin {}

public enum Crossorigin: String {
  /// Requests for the element will have their mode set to "`cors`" and their credentials mode set to "`same-origin`".
  case anonymous = ""

  /// Requests for the element will have their mode set to "`cors`" and their credentials mode set to "`include`".
  case useCredentials = "use-credentials"
}

/// How the element handles crossorigin requests.
///
/// - Parameter value: How the element handles crossorigin requests.
public func crossorigin<T: HasCrossorigin>(_ value: Crossorigin) -> Attribute<T> {
  return .init("crossorigin", value.rawValue)
}

/// Adds a `data`-prefixed attribute to the element.
///
/// - Parameters:
///   - name: The attribute suffix.
///   - value: The value.
public func data<T>(_ name: StaticString, _ value: String) -> Attribute<T> {
  return .init("data-\(name)", value)
}

private let iso8601DateFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.locale = Locale(identifier: "en_US_POSIX")
  formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
  formatter.timeZone = TimeZone(identifier: "UTC")
  return formatter
}()

/// Conforming elements can have a `datetime` attribute. Includes `<del>`, `<ins>`, and `<time>` elements.
public protocol HasDatetime {}

extension Tag.Del: HasDatetime {}
extension Tag.Ins: HasDatetime {}
extension Tag.Time: HasDatetime {}

public func datetime<T: HasDatetime>(_ value: Date) -> Attribute<T> {
  return .init("datetime", iso8601DateFormatter.string(from: value))
}

public func `default`(_ value: Bool) -> Attribute<Tag.Track> {
  return .init("default", value ? "" : nil)
}

/// Defer script execution.
///
/// - Parameter value: Defer script execution.
public func `defer`(_ value: Bool) -> Attribute<Tag.Script> {
  return .init("defer", value ? "" : nil)
}

public enum Direction: String {
  case ltr
  case rtl
  case auto
}

public func dir<T>(_ value: Direction) -> Attribute<T> {
  return .init("dir", value.rawValue)
}

/// Conforming elements can have a `disabled` attribute. Includes `<button>`, `<fieldset>`, `<input>`, `<optgroup>`, `<option>`, `<select>`, and `<textarea>` elements.
public protocol HasDisabled {}

extension Tag.Button: HasDisabled {}
extension Tag.Fieldset: HasDisabled {}
extension Tag.Input: HasDisabled {}
extension Tag.Optgroup: HasDisabled {}
extension Tag.Option: HasDisabled {}
extension Tag.Select: HasDisabled {}
extension Tag.Textarea: HasDisabled {}

/// Whether the form control is disabled.
///
/// - Parameter value: Whether the form control is disabled.
public func disabled<T: HasDisabled>(_ value: Bool) -> Attribute<T> {
  return .init("disabled", value ? "" : nil)
}

public enum Draggable: String {
  /// The element is draggable.
  case `true`

  /// The element is not draggable.
  case `false`

  /// The default draggable behavior of the user agent.
  case auto
}

extension Draggable: ExpressibleByBooleanLiteral {
  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

/// Whether or not an element is draggable.
///
/// - Parameter value: Whether or not an element is draggable.
public func draggable<T>(_ value: Draggable) -> Attribute<T> {
  return .init("draggable", value == .auto ? nil : value.rawValue)
}

/// Conforming elements can have a `for` attribute. Includes `<label>` and `<output>` elements.
public protocol HasFor {}

extension Tag.Label: HasFor {}
extension Tag.Output: HasFor {}

/// Associate the label or output with form control.
///
/// - Parameter value: The `id` of the form control
public func `for`<T: HasFor>(_ value: String) -> Attribute<T> {
  return .init("for", value)
}

/// Conforming elements can have a `form` attribute. Includes `<button>`, `<fieldset>`, `<input>`, `<label>`, `<meter>`, `<object>`, `<output>`, `<select>`, and `<textarea>` elements.
public protocol HasForm {}

extension Tag.Button: HasForm {}
extension Tag.Fieldset: HasForm {}
extension Tag.Input: HasForm {}
extension Tag.Label: HasForm {}
extension Tag.Meter: HasForm {}
extension Tag.Object: HasForm {}
extension Tag.Output: HasForm {}
extension Tag.Select: HasForm {}
extension Tag.Textarea: HasForm {}

/// Associates the control with a `<form>` element.
///
/// - Parameter value: The associated `<form>` element's `id`.
public func form<T: HasForm>(_ value: String) -> Attribute<T> {
  return .init("form", value)
}

/// Conforming elements can have a `headers` attribute. Includes `<td>` and `<th>` elements.
public protocol HasHeaders {}

extension Tag.Td: HasHeaders {}
extension Tag.Th: HasHeaders {}

/// The header cells for this cell.
///
/// - Parameter value: The header cells for this cell.
public func headers<T: HasHeaders>(_ value: String) -> Attribute<T> {
  return .init("headers", value)
}

/// Conforming elements can have a `height` attribute. Includes `<canvas>`, `<embed>`, `<iframe>`, `<img>`, `<input>`, `<object>`, `<svg>`, and `<video>` elements.
public protocol HasHeight {}

extension Tag.Canvas: HasHeight {}
extension Tag.Embed: HasHeight {}
extension Tag.Iframe: HasHeight {}
extension Tag.Img: HasHeight {}
extension Tag.Input: HasHeight {}
extension Tag.Object: HasHeight {}
extension Tag.Svg: HasHeight {}
extension Tag.Video: HasHeight {}

/// Vertical dimension.
///
/// - Parameter value: Vertical dimension.
public func height<T: HasHeight>(_ value: Int) -> Attribute<T> {
  return .init("height", String(value))
}

/// Hide the element.
///
/// - Parameter value: Hide the element.
public func hidden<T>(_ value: Bool) -> Attribute<T> {
  return .init("hidden", value ? "" : nil)
}

/// Conforming elements can have an `href` attribute. Includes `<a>`, `<area>`, `<base>`, and `<link>` elements.
public protocol HasHref {}

extension Tag.A: HasHref {}
extension Tag.Area: HasHref {}
extension Tag.Base: HasHref {}
extension Tag.Link: HasHref {}

/// Address of a hyperlink.
///
/// - Parameter value: Address of a hyperlink.
public func href<T: HasHref>(_ value: String) -> Attribute<T> {
  return .init("href", value)
}

// TODO: Add subject and other parameters
/// Email address of a hyperlink.
///
/// - Parameter address: Address of a hyperlink.
public func mailto(_ address: String) -> Attribute<Tag.A> {
  return href("mailto:" + address)
}

/// When specified on HTML elements, the `id` attribute value must be unique amongst all the IDs in the element's tree and must contain at least one character. The value must not contain any space characters.
///
/// - Parameter value: A unique identifier.
public func id<T>(_ value: String) -> Attribute<T> {
  return .init("id", value)
}

/// Kinds of text tracks for `<track>` elements.
public enum TrackKind: String {
  /// Transcription or translation of the dialog, sound effects, relevant musical cues, and other relevant audio information, suitable for when sound is unavailable or not clearly audible (e.g., because it is muted, drowned-out by ambient noise, or because the user is deaf). Overlaid on the video; labeled as appropriate for the hard-of-hearing.
  case captions

  /// Chapter titles, intended to be used for navigating the media resource. Displayed as an interactive (potentially nested) list in the user agent's interface.
  case chapters

  /// Textual descriptions of the video component of the media resource, intended for audio synthesis when the visual component is obscured, unavailable, or not usable (e.g., because the user is interacting with the application without a screen while driving, or because the user is blind). Synthesized as audio
  case descriptions

  /// Tracks intended for use from script. Not displayed by the user agent.
  case metadata

  /// Transcription or translation of the dialog, suitable for when the sound is available but not understood (e.g., because the user does not understand the language of the media resource's audio track). Overlaid on the video.
  case subtitles
}

/// The type of text track.
///
/// - Parameter value: The type of text track.
public func kind(_ value: TrackKind) -> Attribute<Tag.Track> {
  return .init("kind", value.rawValue)
}

/// User-visible label for a `<track>` element.
///
/// - Parameter value: User-visible label.
public func label(_ value: String) -> Attribute<Tag.Track> {
  return .init("label", value)
}

public enum Language: String {
  case aa
  case ab
  case ae
  case af
  case ak
  case am
  case an
  case ar
  case `as`
  case av
  case ay
  case az
  case ba
  case be
  case bg
  case bh
  case bi
  case bm
  case bn
  case bo
  case br
  case bs
  case ca
  case ce
  case ch
  case co
  case cr
  case cs
  case cu
  case cv
  case cy
  case da
  case de
  case dv
  case dz
  case ee
  case el
  case en
  case eo
  case es
  case et
  case eu
  case fa
  case ff
  case fi
  case fj
  case fo
  case fr
  case fy
  case ga
  case gd
  case gl
  case gn
  case gu
  case gv
  case ha
  case he
  case hi
  case ho
  case hr
  case ht
  case hu
  case hy
  case hz
  case ia
  case id
  case ie
  case ig
  case ii
  case ik
  case `in`
  case io
  case `is`
  case it
  case iu
  case ja
  case ji
  case jv
  case ka
  case kg
  case ki
  case kj
  case kk
  case kl
  case km
  case kn
  case ko
  case kr
  case ks
  case ku
  case kv
  case kw
  case ky
  case la
  case lb
  case lg
  case li
  case ln
  case lo
  case lt
  case lu
  case lv
  case mg
  case mh
  case mi
  case mk
  case ml
  case mn
  case mr
  case ms
  case mt
  case my
  case na
  case nb
  case nd
  case ne
  case nl
  case nn
  case no
  case nr
  case nv
  case ny
  case oc
  case oj
  case om
  case or
  case os
  case pa
  case pi
  case pl
  case ps
  case pt
  case qu
  case rm
  case rn
  case ro
  case ru
  case rw
  case sa
  case sc
  case sd
  case se
  case sg
  case si
  case sk
  case sl
  case sm
  case sn
  case so
  case sq
  case sr
  case ss
  case st
  case su
  case sv
  case sw
  case ta
  case te
  case tg
  case th
  case ti
  case tk
  case tl
  case tn
  case to
  case tr
  case ts
  case tt
  case tw
  case ty
  case ug
  case uk
  case ur
  case uz
  case ve
  case vi
  case vo
  case wa
  case wo
  case xh
  case yi
  case yo
  case za
  case zu
  case zh
  case zhHans = "zh-Hans"
  case zhHant = "zh-Hant"
  case unknown = ""
}

/// The `lang` attribute specifies the primary language for the element's contents and for any of the element's attributes that contain text.
///
/// - Parameter value: A valid BCP 47 language tag, or the empty string. Setting the attribute to the empty string indicates that the primary language is unknown.
public func lang<T>(_ value: Language) -> Attribute<T> {
  return .init("lang", value.rawValue)
}

/// Conforming elements can have a `loop` attribute. Includes `<audio>` and `<video>` elements.
public protocol HasLoop {}

extension Tag.Audio: HasLoop {}
extension Tag.Video: HasLoop {}

public func loop<T: HasLoop>(_ value: Bool) -> Attribute<T> {
  return .init("loop", value ? "" : nil)
}

/// Conforming elements can have a `max` attribute. Includes `<input>`, `<meter>`, and `<progress>` elements.
public protocol HasMax {}

extension Tag.Input: HasMax {}
extension Tag.Meter: HasMax {}
extension Tag.Progress: HasMax {}

/// Maximum value.
///
/// - Parameter value: Maximum value.
public func max<T: HasMax>(_ value: Double) -> Attribute<T> {
  return .init("max", String(value))
}

/// Maximum value.
///
/// - Parameter value: Maximum value.
public func max<T: HasMax>(_ value: Int) -> Attribute<T> {
  return .init("max", String(value))
}

/// Conforming elements can have a `maxlength` attribute. Includes `<input>` and `<textarea>` elements.
public protocol HasMaxlength {}

extension Tag.Input: HasMaxlength {}
extension Tag.Textarea: HasMaxlength {}

/// Maximum length of value.
///
/// - Parameter value: Maximum length of value.
public func maxlength<T>(_ value: Int) -> Attribute<T> {
  return .init("maxlength", String(value))
}

/// Applicable media.
///
/// - Parameter value: A media query list.
public func media(_ value: String) -> Attribute<Tag.Source> {
  return .init("media", value)
}

/// HTTP method to use for form submission.
public enum Method: String {
  /// Submitting the form is intended to close the dialog box in which the form finds itself, if any, and otherwise not submit.
  case dialog = "dialog"

  /// The HTTP GET method.
  case get = ""

  /// The HTTP POST method.
  case post = "post"
}

/// HTTP method to use for form submission.
///
/// - Parameter value: HTTP method to use for form submission.
public func method(_ value: Method) -> Attribute<Tag.Form> {
  let rawValue = value.rawValue
  return .init("method", rawValue.isEmpty ? nil : rawValue)
}

/// Conforming elements can have a `min` attribute. Includes `<input>`, `<meter>`, and `<progress>` elements.
public protocol HasMin {}

extension Tag.Input: HasMin {}
extension Tag.Meter: HasMin {}
extension Tag.Progress: HasMin {}

/// Minimum value.
///
/// - Parameter value: Minimum value.
public func min<T: HasMin>(_ value: Double) -> Attribute<T> {
  return .init("min", String(value))
}

/// Minimum value.
///
/// - Parameter value: Minimum value.
public func min<T: HasMin>(_ value: Int) -> Attribute<T> {
  return .init("min", String(value))
}

/// Conforming elements can have a `minlength` attribute. Includes `<input>` and `<textarea>` elements.
public protocol HasMinlength {}

extension Tag.Input: HasMinlength {}
extension Tag.Textarea: HasMinlength {}

/// Minimum length of value.
///
/// - Parameter value: Minimum length of value.
public func minlength<T: HasMinlength>(_ value: Int) -> Attribute<T> {
  return .init("minlength", String(value))
}

/// Conforming elements can have a `multiple` attribute. Includes `<input>` and `<select>` elements.
public protocol HasMultiple {}

extension Tag.Input: HasMultiple {}
extension Tag.Select: HasMultiple {}

/// Whether to allow multiple values.
///
/// - Parameter value: Whether to allow multiple values.
public func multiple<T: HasMultiple>(_ value: Bool) -> Attribute<T> {
  return .init("multiple", value ? "" : nil)
}

/// Conforming elements can have a `muted` attribute. Includes `<audio>` and `<video>` elements.
public protocol HasMuted {}

extension Tag.Audio: HasMuted {}
extension Tag.Video: HasMuted {}

/// Whether to mute the media resource by default.
///
/// - Parameter value: Whether to mute the media resource by default.
public func muted<T: HasMuted>(_ value: Bool) -> Attribute<T> {
  return .init("muted", value ? "" : nil)
}

public protocol HasName {}

extension Tag.Button: HasName {}
extension Tag.Fieldset: HasName {}
extension Tag.Form: HasName {}
extension Tag.Iframe: HasName {}
extension Tag.Input: HasName {}
extension Tag.Map: HasName {}
extension Tag.Object: HasName {}
extension Tag.Output: HasName {}
extension Tag.Select: HasName {}
extension Tag.Textarea: HasName {}

/// Name of form control to use for form submission and in the form.elements API.
///
/// - Parameter value: Name of form control.
public func name<T: HasName>(_ value: String) -> Attribute<T> {
  return .init("name", value)
}

/// Cryptographic nonce used in Content Security Policy checks.
///
/// - Parameter value: Cryptographic nonce used in Content Security Policy checks.
public func nonce(_ value: String) -> Attribute<Tag.Script> {
  return .init("nonce", value)
}

/// Bypass form control validation for form submission.
///
/// - Parameter value: Bypass form control validation for form submission.
public func novalidate(_ value: Bool) -> Attribute<Tag.Form> {
  return .init("novalidate", value ? "" : nil)
}

/// Whether the details are visible.
///
/// - Parameter value: Whether the details are visible.
public func open(_ value: Bool) -> Attribute<Tag.Details> {
  return .init("open", value ? "" : nil)
}

/// Pattern to be matched by the form control's value.
///
/// - Parameter value: Pattern to be matched by the form control's value.
public func pattern(_ value: String) -> Attribute<Tag.Input> {
  return .init("pattern", value)
}

/// Conforming elements can have a `placeholder` attribute. Includes `<input>` and `<textarea>` elements.
public protocol HasPlaceholder {}

extension Tag.Input: HasPlaceholder {}
extension Tag.Textarea: HasPlaceholder {}

/// User-visible label to be placed within the form control.
///
/// - Parameter value: User-visible label to be placed within the form control.
public func placeholder<T: HasPlaceholder>(_ value: String) -> Attribute<T> {
  return .init("placeholder", value)
}

public func poster(_ value: String) -> Attribute<Tag.Video> {
  return .init("poster", value)
}

/// Conforming elements can have a `preload` attribute. Includes `<audio>` and `<video>` elements.
public protocol HasPreload {}

extension Tag.Audio: HasPreload {}
extension Tag.Video: HasPreload {}

public enum Preload: String {
  /// Hints to the user agent that the user agent can put the user's needs first without risk to the server, up to and including optimistically downloading the entire resource.
  case auto = ""

  /// Hints to the user agent that the author does not expect the user to need the media resource, but that fetching the resource metadata (dimensions, track list, duration, etc), and maybe even the first few frames, is reasonable. If the user agent precisely fetches no more than the metadata, then the media element will end up with its readyState attribute set to `HAVE_METADATA`; typically though, some frames will be obtained as well and it will probably be `HAVE_CURRENT_DATA` or `HAVE_FUTURE_DATA`. When the media resource is playing, hints to the user agent that bandwidth is to be considered scarce, e.g., suggesting throttling the download so that the media data is obtained at the slowest possible rate that still maintains consistent playback.
  case metadata

  /// Hints to the user agent that either the author does not expect the user to need the media resource, or that the server wants to minimize unnecessary traffic. This state does not provide a hint regarding how aggressively to actually download the media resource if buffering starts anyway (e.g., once the user hits "play").
  case none
}

/// Hints how much buffering the media resource will likely need.
///
/// - Parameter value: Hints how much buffering the media resource will likely need.
public func preload<T: HasPreload>(_ value: Preload) -> Attribute<T> {
  return .init("preload", value.rawValue)
}

/// Conforming elements can have a `readonly` attribute. Includes `<input>` and `<textarea>` elements.
public protocol HasReadonly {}

extension Tag.Input: HasReadonly {}
extension Tag.Textarea: HasReadonly {}

/// Whether to allow the value to be edited by the user.
///
/// - Parameter value: Whether to allow the value to be edited by the user.
public func readonly<T: HasReadonly>(_ value: Bool) -> Attribute<T> {
  return .init("readonly", value ? "" : nil)
}

/// Conforming elements can have a `rel` attribute. Includes `<a>`, `<area>`, and `<link>` elements.
public protocol HasRel {}

extension Tag.A: HasRel {}
extension Tag.Area: HasRel {}
extension Tag.Link: HasRel {}

public struct Rel: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let alternate = Rel(rawValue: "alternate")
  public static let author = Rel(rawValue: "author")
  public static let bookmark = Rel(rawValue: "bookmark")
  public static let help = Rel(rawValue: "help")
  public static let icon = Rel(rawValue: "icon")
  public static let license = Rel(rawValue: "license")
  public static let next = Rel(rawValue: "next")
  public static let nofollow = Rel(rawValue: "nofollow")
  public static let prev = Rel(rawValue: "prev")
  public static let search = Rel(rawValue: "search")
  public static let stylesheet = Rel(rawValue: "stylesheet")
  public static let tag = Rel(rawValue: "tag")
}

public func rel<T: HasRel>(_ value: Rel) -> Attribute<T> {
  return .init("rel", value.rawValue)
}

/// Conforming elements can have a `required` attribute. Includes `<input>`, `<select>` and `<textarea>` elements.
public protocol HasRequired {}

extension Tag.Input: HasRequired {}
extension Tag.Select: HasRequired {}
extension Tag.Textarea: HasRequired {}

/// Whether the control is required for form submission.
///
/// - Parameter value: Whether the control is required for form submission.
public func required<T: HasRequired>(_ value: Bool) -> Attribute<T> {
  return .init("required", value ? "" : nil)
}

/// Number the list backwards.
///
/// - Parameter value: Number the list backwards.
public func reversed(_ value: Bool) -> Attribute<Tag.Ol> {
  return .init("reversed", value ? "" : nil)
}

/// Number of lines to show.
///
/// - Parameter value: Number of lines to show.
public func rows(_ value: Int) -> Attribute<Tag.Textarea> {
  return .init("rows", String(value))
}

/// Conforming elements can have a `rowspan` attribute. Includes `<td>` and `<th>` elements.
public protocol HasRowspan {}

extension Tag.Td: HasRowspan {}
extension Tag.Th: HasRowspan {}

/// /// Number of rows that the cell is to span.
///
/// - Parameter value: Number of rows that the cell is to span.
public func rowspan<T: HasRowspan>(_ value: Int) -> Attribute<T> {
  return .init("rowspan", String(value))
}

public enum Sandbox: String {
  /// Re-enable forms.
  case allowForms = "allow-forms"

  /// Re-enable the pointer lock API.
  case allowPointerLock = "allow-pointer-lock"

  /// Re-enable popups.
  case allowPopups = "allow-popups"

  /// Re-enable the presentation API.
  case allowPresentation = "allow-presentation"

  /// Causes the content to be treated as being from its real origin instead of forcing it into a unique origin.
  case allowSameOrigin = "allow-same-origin"

  /// Re-enable scripts.
  case allowScripts = "allow-scripts"

  /// Allows the content to navigate its top-level browsing context.
  case allowTopNavigation = "allow-top-navigation"
}

/// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
///
/// - Parameter value: Sandbox options.
public func sandbox(_ value: [Sandbox]) -> Attribute<Tag.Iframe> {
  return .init("sandbox", value.map { $0.rawValue }.joined(separator: " "))
}

/// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
///
/// - Parameter value: Whether or not to sandbox the `<iframe>`.
public func sandbox(_ value: Bool) -> Attribute<Tag.Iframe> {
  return .init("sandbox", value ? "" : nil)
}

/// Specifies which cells the header cell applies to.
public enum Scope: String {
  /// The **auto** state makes the header cell apply to a set of cells selected based on context.
  case auto = ""

  /// The **column** state means the header cell applies to some of the subsequent cells in the same column(s).
  case col

  /// The **col group** state means the header cell applies to all the remaining cells in the column group. A `<th>` element's `scope` attribute must not be in the column group state if the element is not anchored in a column group.
  case colgroup

  /// The **row** state means the header cell applies to some of the subsequent cells in the same row(s).
  case row

  /// The **row group** state means the header cell applies to all the remaining cells in the row group. A `<th>` element's `scope` attribute must not be in the row group state if the element is not anchored in a row group.
  case rowgroup
}

/// Specifies which cells the header cell applies to.
///
/// - Parameter value: Specifies which cells the header cell applies to.
public func scope(_ value: Scope) -> Attribute<Tag.Th> {
  return .init("scope", value.rawValue)
}

/// Whether the option is selected by default.
///
/// - Parameter value: Whether the option is selected by default.
public func selected(_ value: Bool) -> Attribute<Tag.Option> {
  return .init("selected", value ? "" : nil)
}

/// The kind of shape to be created in an image map.
public enum Shape: String {
  case circle
//  case `default`
  case poly
  case rect = ""
}

/// The kind of shape to be created in an image map.
///
/// - Parameter value: The kind of shape to be created in an image map.
public func shape(_ value: Shape) -> Attribute<Tag.Area> {
  return .init("shape", value == .rect ? nil : value.rawValue)
}

/// Conforming elements can have a `span` attribute. Includes `<col>` and `<colgroup>` elements.
public protocol HasSpan {}

extension Tag.Col: HasSpan {}
extension Tag.Colgroup: HasSpan {}

public func span<T: HasSpan>(_ value: Int) -> Attribute<T> {
  return .init("span", String(value))
}

public func spellcheck<T>(_ value: Bool) -> Attribute<T> {
  return .init("spellcheck", String(value))
}

/// Conforming elements can have a `src` attribute. Includes `<audio>`, `<embed>`, `<iframe>`, `<img>`, `<input>`, `<script>`, `<source>`, `<track>`, and `<video>` elements.
public protocol HasSrc {}

extension Tag.Audio: HasSrc {}
extension Tag.Embed: HasSrc {}
extension Tag.Iframe: HasSrc {}
extension Tag.Img: HasSrc {}
extension Tag.Input: HasSrc {}
extension Tag.Script: HasSrc {}
extension Tag.Source: HasSrc {}
extension Tag.Track: HasSrc {}
extension Tag.Video: HasSrc {}

/// Address of the resource.
///
/// - Parameter value: Address of the resource.
public func src<T: HasSrc>(_ value: String) -> Attribute<T> {
  return .init("src", value)
}

/// A document to render in the `iframe`.
///
/// - Parameter value: A document to render in the `iframe`.
public func srcdoc(_ value: Node) -> Attribute<Tag.Iframe> {
  return .init("srcdoc", render(value))
}

/// Language of the text track.
///
/// - Parameter value: Language of the text track.
public func srclang(_ value: Language) -> Attribute<Tag.Track> {
  return .init("srclang", value.rawValue)
}

public enum Size: CustomStringConvertible {
  case w(Int)
  case x(Int)

  public var description: String {
    switch self {
    case let .w(n):
      return "\(n)w"
    case let .x(n):
      return "\(n)x"
    }
  }
}

/// Conforming elements can have a `srcset` attribute. Includes `<img>` and `<source>` elements.
public protocol HasSrcset {}

extension Tag.Img: HasSrcset {}
extension Tag.Source: HasSrcset {}

/// Images to use in different situations (e.g., high-resolution displays, small monitors, etc).
///
/// - Parameter value: Images to use in different situations (e.g., high-resolution displays, small monitors, etc).
public func srcset<T: HasSrcset>(_ value: [String: Size]) -> Attribute<T> {
  return .init("srcset", value.map { url, size in url + " " + size.description }.joined(separator: ", "))
}

/// Images to use in different situations (e.g., high-resolution displays, small monitors, etc).
///
/// - Parameter value: Images to use in different situations (e.g., high-resolution displays, small monitors, etc).
public func srcset(_ value: String) -> Attribute<Tag.Source> {
  return .init("srcset", value)
}

/// Ordinal value of the first item.
///
/// - Parameter value: Ordinal value of the first item.
public func start(_ value: Int) -> Attribute<Tag.Ol> {
  return .init("start", String(value))
}

/// Granularity to be matched by the form control's value.
///
/// - Parameter value: Granularity to be matched by the form control's value.
public func step(_ value: Int) -> Attribute<Tag.Input> {
  return .init("step", String(value))
}

/// This is a style attribute as defined by the _CSS Style Attributes_ specification.
///
/// - Parameter value: A CSS style.
public func style<T>(_ value: StaticString) -> Attribute<T> {
  return style(unsafe: String(describing: value))
}

/// This is a style attribute as defined by the _CSS Style Attributes_ specification.
///
/// - Parameter value: A CSS style.
public func style<T>(unsafe value: String) -> Attribute<T> {
  return .init("style", String(describing: value))
}

/// The `tabindex` content attribute allows authors to indicate that an element is supposed to be focusable, whether it is supposed to be reachable using sequential focus navigation and, optionally, to suggest where in the sequential focus navigation order the element appears.
///
/// - Parameter value: The sequential focus navigation order the element appears.
public func tabindex<T>(_ value: Int) -> Attribute<T> {
  return .init("tabindex", String(value))
}

/// Default browsing context for hyperlink navigation and form submission.
public struct Target: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let blank = Target(rawValue: "_blank")
  public static let `self` = Target(rawValue: "")
  public static let parent = Target(rawValue: "_parent")
  public static let top = Target(rawValue: "_top")
}

/// Conforming elements can have a `target` attribute. Includes `<a>`, `<area>`, `<base>`, and `<form>` elements.
public protocol HasTarget {}

extension Tag.A: HasTarget {}
extension Tag.Area: HasTarget {}
extension Tag.Base: HasTarget {}
extension Tag.Form: HasTarget {}

/// Default browsing context for hyperlink navigation and form submission.
///
/// - Parameter value: Default browsing context for hyperlink navigation and form submission.
public func target<T: HasTarget>(_ value: Target) -> Attribute<T> {
  return .init("target", value == .self ? nil : value.rawValue)
}

/// The `title` attribute represents advisory information for the element, such as would be appropriate for a tooltip.
///
/// - Parameter value: Advisory information.
public func title<T>(_ value: String) -> Attribute<T> {
  return .init("title", value)
}

public enum Translate: String {
  case yes
  case no
}

extension Translate: ExpressibleByBooleanLiteral {
  public init(booleanLiteral value: Bool) {
    self = value ? .yes : .no
  }
}

/// Whether or not an element's attribute values and the values of its text node children are to be translated when the page is localized.
///
/// - Parameter value: Whether or not an element's attribute values and the values of its text node children are to be translated when the page is localized.
public func translate<T>(_ value: Translate) -> Attribute<T> {
  return .init("translate", value.rawValue)
}

/// Conforming elements can have a media `type` attribute. Includes `<embed>`, `<link>`, `<object>`, `<script>`, `<source>`, and `<style>` elements.
public protocol HasMediaType {}

extension Tag.A: HasMediaType {}
extension Tag.Embed: HasMediaType {}
extension Tag.Link: HasMediaType {}
extension Tag.Object: HasMediaType {}
extension Tag.Script: HasMediaType {}
extension Tag.Source: HasMediaType {}
extension Tag.Style: HasMediaType {}

/// Hint for the type of the referenced resource.
///
/// - Parameter value: Hint for the type of the referenced resource.
public func type<T: HasMediaType>(_ value: MediaType) -> Attribute<T> {
  return .init("type", value.description)
}

/// Type of button.
public enum ButtonType: String {
  /// Does nothing.
  case button

  /// Resets the form.
  case reset

  /// Submits the form.
  case submit
}

/// Type of button.
///
/// - Parameter value: Type of button.
public func type(_ value: ButtonType) -> Attribute<Tag.Button> {
  return .init("type", value.rawValue)
}

public enum ListType: String {
  /// Decimal numbers: `1.`, `2.`, `3.`...`3999.`, `4000.`, `4001.`
  case decimal = "1"

  /// Lowercase Latin alphabet: `a.`, `b.`, `c.`...`ewu.`, `ewv.`, `eww.`
  case lowerAlpha = "a"

  /// Uppercase Latin alphabet: `A.`, `B.`, `C.`...`EWU.`, `EWV.`, `EWW.`
  case upperAlpha = "A"

  /// Lowercase Roman numerals: `1.`, `2.`, `3.`...`mmmcmxcix.`, `i̅v̅.`, `i̅v̅i.`
  case lowerRoman = "i"

  /// Uppercase Roman numerals: `I.`, `II.`, `III.`...`MMMCMXCIX.`, `I̅V̅.`, `I̅V̅I.`
  case upperRoman = "I"
}

/// Kind of list marker.
///
/// - Parameter value: Kind of list marker.
public func type(_ value: ListType) -> Attribute<Tag.Ol> {
  return .init("type", value.rawValue)
}

public enum InputType: String {
  case button
  case checkbox
  case color
  case date
  case datetimeLocal = "datetime-local"
  case email
  case file
  case hidden
  case image
  case month
  case number
  case password
  case radio
  case range
  case reset
  case search
  case submit
  case tel
  case text
  case time
  case url
  case week
}

public func type(_ value: InputType) -> Attribute<Tag.Input> {
  return .init("type", value.rawValue)
}

/// Conforming elements can have a `Double`-based `value` attribute. Includes `<input>`, `<meter>`, and `<progress>` elements.
public protocol HasDoubleValue {}

extension Tag.Input: HasDoubleValue {}
extension Tag.Meter: HasDoubleValue {}
extension Tag.Progress: HasDoubleValue {}

public func value<T: HasDoubleValue>(_ value: Double) -> Attribute<T> {
  return .init("value", String(value))
}

/// Conforming elements can have an `Int`-based `value` attribute. Includes `<input>` and `<li>` elements.
public protocol HasIntValue {}

extension Tag.Input: HasIntValue {}
extension Tag.Li: HasIntValue {}

/// The form control's value. (Or, for `<li>` elements, the ordinal value of the list item.)
///
/// - Parameter value: The form control's value.
public func value<T: HasIntValue>(_ value: Int) -> Attribute<T> {
  return .init("value", String(value))
}

/// Conforming elements can have a `String`-based `value` attribute. Includes `<button>`, `<input>`, and `<option>` elements.
public protocol HasStringValue {}

extension Tag.Button: HasStringValue {}
extension Tag.Input: HasStringValue {}
extension Tag.Option: HasStringValue {}

/// The form control's value.
///
/// - Parameter value: The form control's value.
public func value<T: HasStringValue>(_ value: String) -> Attribute<T> {
  return .init("value", value)
}

/// Conforming elements can have a media `type` attribute. Includes `<canvas>`, `<embed>`, `<iframe>`, `<img>`, `<input>`, `<object>`, `<svg>`, and `<video>` elements.
public protocol HasWidth {}

extension Tag.Canvas: HasWidth {}
extension Tag.Embed: HasWidth {}
extension Tag.Iframe: HasWidth {}
extension Tag.Img: HasWidth {}
extension Tag.Input: HasWidth {}
extension Tag.Object: HasWidth {}
extension Tag.Svg: HasWidth {}
extension Tag.Video: HasWidth {}

/// Horizontal dimension.
///
/// - Parameter value: Vertical dimension.
public func width<T: HasWidth>(_ value: Int) -> Attribute<T> {
  return .init("width", String(value))
}

public enum Wrap: String {
  /// Indicates that the text in the `<textarea>` is to have newlines added by the user agent so that the text is wrapped when it is submitted.
  ///
  /// If the element's `wrap` attribute is in the `hard` state, the `cols` attribute must be specified.
  case hard

  /// Indicates that the text in the `<textarea>` is not to be wrapped when it is submitted (though it can still be wrapped in the rendering).
  case soft
}

/// How the value of the form control is to be wrapped for form submission.
///
/// - Parameter value: How the value of the form control is to be wrapped for form submission.
public func wrap(_ value: Wrap) -> Attribute<Tag.Textarea> {
  return .init("wrap", value.rawValue)
}
