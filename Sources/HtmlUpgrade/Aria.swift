extension Attribute {
  public enum AriaBoolean: String, ExpressibleByBooleanLiteral {
    case `false`
    case `true`
    case undefined

    public init(booleanLiteral value: Bool) {
      self = value ? .true : .false
    }
  }

  public enum AriaToggled: String, ExpressibleByBooleanLiteral {
    case `false`
    case `true`
    case mixed
    case undefined

    public init(booleanLiteral value: Bool) {
      self = value ? .true : .false
    }
  }

  public struct Role: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static var alert: Role { return Role(rawValue: "alert") }
    public static var alertdialog: Role { return Role(rawValue: "alertdialog") }
    public static var application: Role { return Role(rawValue: "application") }
    public static var article: Role { return Role(rawValue: "article") }
    public static var banner: Role { return Role(rawValue: "banner") }
    public static var button: Role { return Role(rawValue: "button") }
    public static var cell: Role { return Role(rawValue: "cell") }
    public static var checkbox: Role { return Role(rawValue: "checkbox") }
    public static var columnheader: Role { return Role(rawValue: "columnheader") }
    public static var combobox: Role { return Role(rawValue: "combobox") }
    public static var complementary: Role { return Role(rawValue: "complementary") }
    public static var contentinfo: Role { return Role(rawValue: "contentinfo") }
    public static var definition: Role { return Role(rawValue: "definition") }
    public static var dialog: Role { return Role(rawValue: "dialog") }
    public static var directory: Role { return Role(rawValue: "directory") }
    public static var document: Role { return Role(rawValue: "document") }
    public static var feed: Role { return Role(rawValue: "feed") }
    public static var figure: Role { return Role(rawValue: "figure") }
    public static var form: Role { return Role(rawValue: "form") }
    public static var grid: Role { return Role(rawValue: "grid") }
    public static var gridcell: Role { return Role(rawValue: "gridcell") }
    public static var group: Role { return Role(rawValue: "group") }
    public static var heading: Role { return Role(rawValue: "heading") }
    public static var img: Role { return Role(rawValue: "img") }
    public static var link: Role { return Role(rawValue: "link") }
    public static var list: Role { return Role(rawValue: "list") }
    public static var listbox: Role { return Role(rawValue: "listbox") }
    public static var listitem: Role { return Role(rawValue: "listitem") }
    public static var log: Role { return Role(rawValue: "log") }
    public static var main: Role { return Role(rawValue: "main") }
    public static var marquee: Role { return Role(rawValue: "marquee") }
    public static var math: Role { return Role(rawValue: "math") }
    public static var menu: Role { return Role(rawValue: "menu") }
    public static var menubar: Role { return Role(rawValue: "menubar") }
    public static var menuitem: Role { return Role(rawValue: "menuitem") }
    public static var menuitemcheckbox: Role { return Role(rawValue: "menuitemcheckbox") }
    public static var menuitemradio: Role { return Role(rawValue: "menuitemradio") }
    public static var navigation: Role { return Role(rawValue: "navigation") }
    public static var none: Role { return Role(rawValue: "none") }
    public static var note: Role { return Role(rawValue: "note") }
    public static var option: Role { return Role(rawValue: "option") }
    public static var presentation: Role { return Role(rawValue: "presentation") }
    public static var progressbar: Role { return Role(rawValue: "progressbar") }
    public static var radio: Role { return Role(rawValue: "radio") }
    public static var radiogroup: Role { return Role(rawValue: "radiogroup") }
    public static var region: Role { return Role(rawValue: "region") }
    public static var row: Role { return Role(rawValue: "row") }
    public static var rowgroup: Role { return Role(rawValue: "rowgroup") }
    public static var rowheader: Role { return Role(rawValue: "rowheader") }
    public static var scrollbar: Role { return Role(rawValue: "scrollbar") }
    public static var search: Role { return Role(rawValue: "search") }
    public static var searchbox: Role { return Role(rawValue: "searchbox") }
    public static var separator: Role { return Role(rawValue: "separator") }
    public static var slider: Role { return Role(rawValue: "slider") }
    public static var spinbutton: Role { return Role(rawValue: "spinbutton") }
    public static var status: Role { return Role(rawValue: "status") }
    public static var `switch`: Role { return Role(rawValue: "switch") }
    public static var tab: Role { return Role(rawValue: "tab") }
    public static var table: Role { return Role(rawValue: "table") }
    public static var tablist: Role { return Role(rawValue: "tablist") }
    public static var tabpanel: Role { return Role(rawValue: "tabpanel") }
    public static var term: Role { return Role(rawValue: "term") }
    public static var textbox: Role { return Role(rawValue: "textbox") }
    public static var timer: Role { return Role(rawValue: "timer") }
    public static var toolbar: Role { return Role(rawValue: "toolbar") }
    public static var tooltip: Role { return Role(rawValue: "tooltip") }
    public static var tree: Role { return Role(rawValue: "tree") }
    public static var treegrid: Role { return Role(rawValue: "treegrid") }
    public static var treeitem: Role { return Role(rawValue: "treeitem") }
  }

  public static func role(_ value: Role) -> Attribute {
    return .init("role", value.rawValue)
  }

  public static func ariaActivedescendant(_ value: String) -> Attribute {
    return .init("aria-activedescendant", value)
  }

  public static func ariaAtomic(_ value: Bool) -> Attribute {
    return .init("aria-atomic", String(value))
  }

  public enum AriaAutocomplete: String {
    case both
    case inline
    case list
    case none
  }

  public static func ariaAutocomplete(_ value: AriaAutocomplete) -> Attribute {
    return .init("aria-autocomplete", value.rawValue)
  }

  public static func ariaBusy(_ value: Bool) -> Attribute {
    return .init("aria-busy", String(value))
  }

  public static func ariaChecked(_ value: AriaToggled) -> Attribute {
    return .init("aria-checked", value.rawValue)
  }

  public static func ariaColcount(_ value: Int) -> Attribute {
    return .init("aria-colcount", String(value))
  }

  public static func ariaColindex(_ value: Int) -> Attribute {
    return .init("aria-colindex", String(value))
  }

  public static func ariaColspan(_ value: Int) -> Attribute {
    return .init("aria-colspan", String(value))
  }

  public static func ariaControls(_ value: String) -> Attribute {
    return .init("aria-controls", value)
  }

  public enum AriaCurrent: String, ExpressibleByBooleanLiteral {
    case date
    case `false`
    case location
    case page
    case step
    case time
    case `true`

    public init(booleanLiteral value: Bool) {
      self = value ? .true : .false
    }
  }

  public static func ariaCurrent(_ value: AriaCurrent) -> Attribute {
    return .init("aria-current", value.rawValue)
  }

  public static func ariaDescribedby(_ value: String) -> Attribute {
    return .init("aria-describedby", value)
  }

  public static func ariaDetails(_ value: String) -> Attribute {
    return .init("aria-details", value)
  }

  public static func ariaDisabled(_ value: Bool) -> Attribute {
    return .init("aria-disabled", String(value))
  }

  public enum AriaDropeffect: String {
    case copy
    case execute
    case link
    case move
    case none
    case popup
  }

  public static func ariaDropeffect(_ value: AriaDropeffect) -> Attribute {
    return .init("aria-dropeffect", value.rawValue)
  }

  public static func ariaErrormessage(_ value: String) -> Attribute {
    return .init("aria-errormessage", value)
  }

  public static func ariaExpanded(_ value: AriaBoolean) -> Attribute {
    return .init("aria-expanded", value.rawValue)
  }

  public static func ariaFlowto(_ value: String) -> Attribute {
    return .init("aria-flowto", value)
  }

  public static func ariaGrabbed(_ value: AriaBoolean) -> Attribute {
    return .init("aria-grabbed", value.rawValue)
  }

  public enum AriaHaspopup: String, ExpressibleByBooleanLiteral {
    case dialog
    case `false`
    case grid
    case menu
    case listbox
    case tree

    public init(booleanLiteral value: Bool) {
      self = value ? .menu : .false
    }
  }
  public static func ariaHaspopup(_ value: AriaHaspopup) -> Attribute {
    return .init("aria-haspopup", value.rawValue)
  }

  public static func ariaHidden(_ value: AriaBoolean) -> Attribute {
    return .init("aria-hidden", value.rawValue)
  }

  public enum AriaInvalid: String, ExpressibleByBooleanLiteral {
    case `false`
    case grammar
    case spelling
    case `true`

    public init(booleanLiteral value: Bool) {
      self = value ? .true : .false
    }
  }

  public static func ariaInvalid(_ value: AriaInvalid) -> Attribute {
    return .init("aria-invalid", value.rawValue)
  }

  public static func ariaKeyshortcuts(_ value: String) -> Attribute {
    return .init("aria-keyshortcuts", value)
  }

  public static func ariaLabel(_ value: String) -> Attribute {
    return .init("aria-label", value)
  }

  public static func ariaLabelledby(_ value: String) -> Attribute {
    return .init("aria-labelledby", value)
  }

  public static func ariaLevel(_ value: Int) -> Attribute {
    return .init("aria-level", String(value))
  }

  public enum AriaLive: String {
    case assertive
    case off
    case polite
  }

  public static func ariaLive(_ value: AriaLive) -> Attribute {
    return .init("aria-live", value.rawValue)
  }

  public static func ariaModal(_ value: Bool) -> Attribute {
    return .init("aria-modal", String(value))
  }

  public static func ariaMultiline(_ value: Bool) -> Attribute {
    return .init("aria-multiline", String(value))
  }

  public static func ariaMultiselectable(_ value: Bool) -> Attribute {
    return .init("aria-multiselectable", String(value))
  }

  public enum AriaOrientation: String {
    case horizontal
    case undefined
    case vertical
  }

  public static func ariaOrientation(_ value: AriaOrientation) -> Attribute {
    return .init("aria-orientation", value.rawValue)
  }

  public static func ariaOwns(_ value: String) -> Attribute {
    return .init("aria-owns", value)
  }

  public static func ariaPlaceholder(_ value: String) -> Attribute {
    return .init("aria-placeholder", value)
  }

  public static func ariaPosinset(_ value: Int) -> Attribute {
    return .init("aria-posinset", String(value))
  }

  public static func ariaPressed(_ value: AriaToggled) -> Attribute {
    return .init("aria-pressed", value.rawValue)
  }

  public static func ariaReadonly(_ value: Bool) -> Attribute {
    return .init("aria-readonly", String(value))
  }

  public enum AriaRelevant: String {
    case additions
    case all
    case removals
    case text
  }

  public static func ariaRelevant(_ value: [AriaRelevant]) -> Attribute {
    return .init("aria-relevant", value.map { $0.rawValue }.joined(separator: " "))
  }

  public static func ariaRequired(_ value: Bool) -> Attribute {
    return .init("aria-required", String(value))
  }

  public static func ariaRoledescription(_ value: String) -> Attribute {
    return .init("aria-roledescription", value)
  }

  public static func ariaRowcount(_ value: Int) -> Attribute {
    return .init("aria-rowcount", String(value))
  }

  public static func ariaRowindex(_ value: Int) -> Attribute {
    return .init("aria-rowindex", String(value))
  }

  public static func ariaRowspan(_ value: Int) -> Attribute {
    return .init("aria-rowspan", String(value))
  }

  public static func ariaSelected(_ value: AriaBoolean) -> Attribute {
    return .init("aria-selected", value.rawValue)
  }

  public static func ariaSetsize(_ value: Int) -> Attribute {
    return .init("aria-setsize", String(value))
  }

  public enum AriaSort: String {
    case ascending
    case descending
    case none
    case other
  }

  public static func ariaSort(_ value: AriaSort) -> Attribute {
    return .init("aria-sort", value.rawValue)
  }

  public static func ariaValuemax(_ value: Double) -> Attribute {
    return .init("aria-valuemax", String(value))
  }

  public static func ariaValuemin(_ value: Double) -> Attribute {
    return .init("aria-valuemin", String(value))
  }

  public static func ariaValuenow(_ value: Double) -> Attribute {
    return .init("aria-valuenow", String(value))
  }

  public static func ariaValuetext(_ value: String) -> Attribute {
    return .init("aria-valuetext", value)
  }
}
