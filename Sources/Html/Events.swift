public protocol HasOnabort {}

extension Tag.Audio: HasOnabort {}
extension Tag.Embed: HasOnabort {}
extension Tag.Img: HasOnabort {}
extension Tag.Object: HasOnabort {}
extension Tag.Video: HasOnabort {}

/// Execute JavaScript if loading of a resource is aborted.
///
/// - Parameter javascript: JavaScript to execute.
public func onabort<T: HasOnabort>(_ javascript: StaticString) -> Attribute<T> {
  return onabort(unsafe: String(describing: javascript))
}

/// Execute JavaScript if loading of a resource is aborted.
///
/// - Parameter javascript: JavaScript to execute.
public func onabort<T: HasOnabort>(unsafe javascript: String) -> Attribute<T> {
  return .init("onabort", javascript)
}

/// Execute JavaScript when a page has started printing.
///
/// - Parameter javascript: JavaScript to execute.
public func onafterprint(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onafterprint(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a page has started printing.
///
/// - Parameter javascript: JavaScript to execute.
public func onafterprint(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onafterprint", javascript)
}

/// Execute JavaScript when a page is about to be printed.
///
/// - Parameter javascript: JavaScript to execute.
public func onbeforeprint(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onbeforeprint(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a page is about to be printed.
///
/// - Parameter javascript: JavaScript to execute.
public func onbeforeprint(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onbeforeprint", javascript)
}

/// Execute JavaScript when the page is about to be unloaded.
///
/// - Parameter javascript: JavaScript to execute.
public func onbeforeunload(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onbeforeunload(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the page is about to be unloaded.
///
/// - Parameter javascript: JavaScript to execute.
public func onbeforeunload(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onbeforeunload", javascript)
}

/// Execute JavaScript when a user leaves an input field.
///
/// - Parameter javascript: JavaScript to execute.
public func onblur<T>(_ javascript: StaticString) -> Attribute<T> {
  return onblur(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user leaves an input field.
///
/// - Parameter javascript: JavaScript to execute.
public func onblur<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onblur", javascript)
}

public protocol HasOncanplay {}

extension Tag.Audio: HasOncanplay {}
extension Tag.Embed: HasOncanplay {}
extension Tag.Object: HasOncanplay {}
extension Tag.Video: HasOncanplay {}

/// Execute JavaScript when a resource is ready to start playing.
///
/// - Parameter javascript: JavaScript to execute.
public func oncanplay<T: HasOncanplay>(_ javascript: StaticString) -> Attribute<T> {
  return oncanplay(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a resource is ready to start playing.
///
/// - Parameter javascript: JavaScript to execute.
public func oncanplay<T: HasOncanplay>(unsafe javascript: String) -> Attribute<T> {
  return .init("oncanplay", javascript)
}

public protocol HasOncanplaythrough {}

extension Tag.Audio: HasOncanplaythrough {}
extension Tag.Video: HasOncanplaythrough {}

/// Execute JavaScript when a resource can be played all the way through, without stopping.
///
/// - Parameter javascript: JavaScript to execute.
public func oncanplaythrough<T: HasOncanplaythrough>(_ javascript: StaticString) -> Attribute<T> {
  return oncanplaythrough(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a resource can be played all the way through, without stopping.
///
/// - Parameter javascript: JavaScript to execute.
public func oncanplaythrough<T: HasOncanplaythrough>(unsafe javascript: String) -> Attribute<T> {
  return .init("oncanplaythrough", javascript)
}

public protocol HasOnchange {}

extension Tag.Input: HasOnchange {}
extension Tag.Select: HasOnchange {}
extension Tag.Textarea: HasOnchange {}

/// Execute JavaScript when a user changes the value of a form control.
///
/// - Parameter javascript: JavaScript to execute.
public func onchange<T: HasOnchange>(_ javascript: StaticString) -> Attribute<T> {
  return onchange(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user changes the value of a form control.
///
/// - Parameter javascript: JavaScript to execute.
public func onchange<T: HasOnchange>(unsafe javascript: String) -> Attribute<T> {
  return .init("onchange", javascript)
}

/// Execute JavaScript when an element is clicked.
///
/// - Parameter javascript: JavaScript to execute.
public func onclick<T>(_ javascript: StaticString) -> Attribute<T> {
  return onclick(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an element is clicked.
///
/// - Parameter javascript: JavaScript to execute.
public func onclick<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onclick", javascript)
}

/// Execute JavaScript when the user right-clicks on an element with a context menu.
///
/// - Parameter javascript: JavaScript to execute.
public func oncontextmenu<T>(_ javascript: StaticString) -> Attribute<T> {
  return oncontextmenu(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user right-clicks on an element with a context menu.
///
/// - Parameter javascript: JavaScript to execute.
public func oncontextmenu<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("oncontextmenu", javascript)
}

/// Execute JavaScript when copying some text of an element.
///
/// - Parameter javascript: JavaScript to execute.
public func oncopy<T>(_ javascript: StaticString) -> Attribute<T> {
  return oncopy(unsafe: String(describing: javascript))
}

/// Execute JavaScript when copying some text of an element.
///
/// - Parameter javascript: JavaScript to execute.
public func oncopy<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("oncopy", javascript)
}

/// Execute JavaScript when the cue changes in a `<track>` element.
///
/// - Parameter javascript: JavaScript to execute.
public func oncuechange(_ javascript: StaticString) -> Attribute<Tag.Track> {
  return oncuechange(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the cue changes in a `<track>` element.
///
/// - Parameter javascript: JavaScript to execute.
public func oncuechange(unsafe javascript: String) -> Attribute<Tag.Track> {
  return .init("oncuechange", javascript)
}

/// Execute JavaScript when cutting some text in an element.
///
/// - Parameter javascript: JavaScript to execute.
public func oncut<T>(_ javascript: StaticString) -> Attribute<T> {
  return oncut(unsafe: String(describing: javascript))
}

/// Execute JavaScript when cutting some text in an element.
///
/// - Parameter javascript: JavaScript to execute.
public func oncut<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("oncut", javascript)
}

/// Execute JavaScript when an element is double-clicked.
///
/// - Parameter javascript: JavaScript to execute.
public func ondblclick<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondblclick(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an element is double-clicked.
///
/// - Parameter javascript: JavaScript to execute.
public func ondblclick<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondblclick", javascript)
}

/// Execute JavaScript when an element is being dragged.
///
/// - Parameter javascript: JavaScript to execute.
public func ondrag<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondrag(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an element is being dragged.
///
/// - Parameter javascript: JavaScript to execute.
public func ondrag<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondrag", javascript)
}

/// Execute JavaScript when the user has finished dragging an element.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragend<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondragend(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user has finished dragging an element.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragend<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondragend", javascript)
}

/// Execute JavaScript when a draggable element enters a drop target.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragenter<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondragenter(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a draggable element enters a drop target.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragenter<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondragenter", javascript)
}

/// Execute JavaScript when an element is being dragged over a drop target.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragover<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondragover(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an element is being dragged over a drop target.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragover<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondragover", javascript)
}

/// Execute JavaScript when the user starts to drag an element.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragstart<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondragstart(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user starts to drag an element.
///
/// - Parameter javascript: JavaScript to execute.
public func ondragstart<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondragstart", javascript)
}

/// Execute JavaScript when a draggable element is dropped in the element.
///
/// - Parameter javascript: JavaScript to execute.
public func ondrop<T>(_ javascript: StaticString) -> Attribute<T> {
  return ondrop(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a draggable element is dropped in the element.
///
/// - Parameter javascript: JavaScript to execute.
public func ondrop<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondrop", javascript)
}

public protocol HasOndurationchange {}

extension Tag.Audio: HasOndurationchange {}
extension Tag.Video: HasOndurationchange {}

/// Execute JavaScript when the media is ready to start playing.
///
/// - Parameter javascript: JavaScript to execute.
public func ondurationchange<T: HasOndurationchange>(_ javascript: StaticString) -> Attribute<T> {
  return ondurationchange(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the media is ready to start playing.
///
/// - Parameter javascript: JavaScript to execute.
public func ondurationchange<T: HasOndurationchange>(unsafe javascript: String) -> Attribute<T> {
  return .init("ondurationchange", javascript)
}

public protocol HasOnemptied {}

extension Tag.Audio: HasOnemptied {}
extension Tag.Video: HasOnemptied {}

public func onemptied<T: HasOnemptied>(_ javascript: StaticString) -> Attribute<T> {
  return onemptied(unsafe: String(describing: javascript))
}

public func onemptied<T: HasOnemptied>(unsafe javascript: String) -> Attribute<T> {
  return .init("onemptied", javascript)
}

public protocol HasOnended {}

extension Tag.Audio: HasOnended {}
extension Tag.Video: HasOnended {}

/// Execute JavaScript when the media has stopped playing.
///
/// - Parameter javascript: JavaScript to execute.
public func onended<T: HasOnerror>(_ javascript: StaticString) -> Attribute<T> {
  return onended(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the media has stopped playing.
///
/// - Parameter javascript: JavaScript to execute.
public func onended<T: HasOnerror>(unsafe javascript: String) -> Attribute<T> {
  return .init("onended", javascript)
}

public protocol HasOnerror {}

extension Tag.Audio: HasOnerror {}
extension Tag.Img: HasOnerror {}
extension Tag.Input: HasOnerror {} // type="image"
extension Tag.Object: HasOnerror {}
extension Tag.Link: HasOnerror {}
extension Tag.Script: HasOnerror {}
extension Tag.Video: HasOnerror {}

public func onerror<T: HasOnerror>(_ javascript: StaticString) -> Attribute<T> {
  return onerror(unsafe: String(describing: javascript))
}

public func onerror<T: HasOnerror>(unsafe javascript: String) -> Attribute<T> {
  return .init("onerror", javascript)
}

/// Execute JavaScript when an element gets focus.
///
/// - Parameter javascript: JavaScript to execute.
public func onfocus<T>(_ javascript: StaticString) -> Attribute<T> {
  return onfocus(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an element gets focus.
///
/// - Parameter javascript: JavaScript to execute.
public func onfocus<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onfocus", javascript)
}

/// Execute JavaScript when the anchor part has been changed.
///
/// - Parameter javascript: JavaScript to execute.
public func onhashchange(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onhashchange(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the anchor part has been changed.
///
/// - Parameter javascript: JavaScript to execute.
public func onhashchange(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onhashchange", javascript)
}

public protocol HasOninput {}

extension Tag.Input: HasOninput {}
extension Tag.Textarea: HasOninput {}

/// Execute JavaScript when a user writes something in a text field.
///
/// - Parameter javascript: JavaScript to execute.
public func oninput<T: HasOninput>(_ javascript: StaticString) -> Attribute<T> {
  return oninput(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user writes something in a text field.
///
/// - Parameter javascript: JavaScript to execute.
public func oninput<T: HasOninput>(unsafe javascript: String) -> Attribute<T> {
  return .init("oninput", javascript)
}

/// Execute JavaScript when an input field is invalid.
///
/// - Parameter javascript: JavaScript to execute.
public func oninvalid(_ javascript: StaticString) -> Attribute<Tag.Input> {
  return oninvalid(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an input field is invalid.
///
/// - Parameter javascript: JavaScript to execute.
public func oninvalid(unsafe javascript: String) -> Attribute<Tag.Input> {
  return .init("oninvalid", javascript)
}

/// Execute JavaScript when a user is pressing a key.
///
/// - Parameter javascript: JavaScript to execute.
public func onkeydown<T>(_ javascript: StaticString) -> Attribute<T> {
  return onkeydown(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user is pressing a key.
///
/// - Parameter javascript: JavaScript to execute.
public func onkeydown<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onkeydown", javascript)
}

/// Execute JavaScript when a user presses a key.
///
/// - Parameter javascript: JavaScript to execute.
public func onkeypress<T>(_ javascript: StaticString) -> Attribute<T> {
  return onkeypress(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user presses a key.
///
/// - Parameter javascript: JavaScript to execute.
public func onkeypress<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onkeypress", javascript)
}

/// Execute JavaScript when a user releases a key.
///
/// - Parameter javascript: JavaScript to execute.
public func onkeyup<T>(_ javascript: StaticString) -> Attribute<T> {
  return onkeyup(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user releases a key.
///
/// - Parameter javascript: JavaScript to execute.
public func onkeyup<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onkeyup", javascript)
}

public protocol HasOnload {}

extension Tag.Body: HasOnload {}
extension Tag.Iframe: HasOnload {}
extension Tag.Img: HasOnload {}
extension Tag.Input: HasOnload {} // type="image"
extension Tag.Link: HasOnload {}
extension Tag.Script: HasOnload {}
extension Tag.Style: HasOnload {}

/// Execute JavaScript immediately after a page has been loaded.
///
/// - Parameter javascript: JavaScript to execute.
public func onload<T: HasOnload>(_ javascript: StaticString) -> Attribute<T> {
  return onload(unsafe: String(describing: javascript))
}

/// Execute JavaScript immediately after a page has been loaded.
///
/// - Parameter javascript: JavaScript to execute.
public func onload<T: HasOnload>(unsafe javascript: String) -> Attribute<T> {
  return .init("onload", javascript)
}

public protocol HasOnloadeddata {}

extension Tag.Audio: HasOnloadeddata {}
extension Tag.Video: HasOnloadeddata {}

public func onloadeddata<T: HasOnloadeddata>(_ javascript: StaticString) -> Attribute<T> {
  return onloadeddata(unsafe: String(describing: javascript))
}

public func onloadeddata<T: HasOnloadeddata>(unsafe javascript: String) -> Attribute<T> {
  return .init("onloadeddata", javascript)
}

public protocol HasOnloadedmetadata {}

extension Tag.Audio: HasOnloadedmetadata {}
extension Tag.Video: HasOnloadedmetadata {}

public func onloadedmetadata<T: HasOnloadedmetadata>(_ javascript: StaticString) -> Attribute<T> {
  return onloadedmetadata(unsafe: String(describing: javascript))
}

public func onloadedmetadata<T: HasOnloadedmetadata>(unsafe javascript: String) -> Attribute<T> {
  return .init("onloadedmetadata", javascript)
}

public protocol HasOnloadstart {}

extension Tag.Audio: HasOnloadstart {}
extension Tag.Video: HasOnloadstart {}

public func onloadstart<T: HasOnloadstart>(_ javascript: StaticString) -> Attribute<T> {
  return onloadstart(unsafe: String(describing: javascript))
}

public func onloadstart<T: HasOnloadstart>(unsafe javascript: String) -> Attribute<T> {
  return .init("onloadstart", javascript)
}

public func onmessage(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onmessage(unsafe: String(describing: javascript))
}

public func onmessage(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onmessage", javascript)
}

/// Execute JavaScript when pressing a mouse button over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmousedown<T>(_ javascript: StaticString) -> Attribute<T> {
  return onmousedown(unsafe: String(describing: javascript))
}

/// Execute JavaScript when pressing a mouse button over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmousedown<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onmousedown", javascript)
}

/// Execute JavaScript when moving the mouse pointer over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmousemove<T>(_ javascript: StaticString) -> Attribute<T> {
  return onmousemove(unsafe: String(describing: javascript))
}

/// Execute JavaScript when moving the mouse pointer over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmousemove<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onmousemove", javascript)
}

/// Execute JavaScript when moving the mouse pointer out of an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmouseout<T>(_ javascript: StaticString) -> Attribute<T> {
  return onmouseout(unsafe: String(describing: javascript))
}

/// Execute JavaScript when moving the mouse pointer out of an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmouseout<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onmouseout", javascript)
}

/// Execute JavaScript when moving the mouse pointer over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmouseover<T>(_ javascript: StaticString) -> Attribute<T> {
  return onmouseover(unsafe: String(describing: javascript))
}

/// Execute JavaScript when moving the mouse pointer over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmouseover<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onmouseover", javascript)
}

/// Execute JavaScript when releasing a mouse button over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmouseup<T>(_ javascript: StaticString) -> Attribute<T> {
  return onmouseup(unsafe: String(describing: javascript))
}

/// Execute JavaScript when releasing a mouse button over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onmouseup<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onmouseup", javascript)
}

/// Execute JavaScript when the browser starts to work offline.
///
/// - Parameter javascript: JavaScript to execute.
public func onoffline(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onoffline(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the browser starts to work offline.
///
/// - Parameter javascript: JavaScript to execute.
public func onoffline(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onoffline", javascript)
}

/// Execute JavaScript when the browser starts to work online.
///
/// - Parameter javascript: JavaScript to execute.
public func ononline(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return ononline(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the browser starts to work online.
///
/// - Parameter javascript: JavaScript to execute.
public func ononline(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("ononline", javascript)
}

/// Execute JavaScript when the user is navigating away from a webpage.
///
/// - Parameter javascript: JavaScript to execute.
public func onpagehide(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onpagehide(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user is navigating away from a webpage.
///
/// - Parameter javascript: JavaScript to execute.
public func onpagehide(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onpagehide", javascript)
}

/// Execute JavaScript when a user navigates to a webpage.
///
/// - Parameter javascript: JavaScript to execute.
public func onpageshow(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onpageshow(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user navigates to a webpage.
///
/// - Parameter javascript: JavaScript to execute.
public func onpageshow(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onpageshow", javascript)
}

/// Execute JavaScript when pasting some text in an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onpaste<T>(_ javascript: StaticString) -> Attribute<T> {
  return onpaste(unsafe: String(describing: javascript))
}

/// Execute JavaScript when pasting some text in an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onpaste<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onpaste", javascript)
}

public protocol HasOnpause {}

extension Tag.Audio: HasOnpause {}
extension Tag.Video: HasOnpause {}

/// Execute JavaScript when media has been paused.
///
/// - Parameter javascript: JavaScript to execute.
public func onpause<T: HasOnpause>(_ javascript: StaticString) -> Attribute<T> {
  return onpause(unsafe: String(describing: javascript))
}

/// Execute JavaScript when media has been paused.
///
/// - Parameter javascript: JavaScript to execute.
public func onpause<T: HasOnpause>(unsafe javascript: String) -> Attribute<T> {
  return .init("onpause", javascript)
}

public protocol HasOnplay {}

extension Tag.Audio: HasOnplay {}
extension Tag.Video: HasOnplay {}

/// Execute JavaScript when media has been played.
///
/// - Parameter javascript: JavaScript to execute.
public func onplay<T: HasOnplay>(_ javascript: StaticString) -> Attribute<T> {
  return onplay(unsafe: String(describing: javascript))
}

/// Execute JavaScript when media has been played.
///
/// - Parameter javascript: JavaScript to execute.
public func onplay<T: HasOnplay>(unsafe javascript: String) -> Attribute<T> {
  return .init("onplay", javascript)
}

public protocol HasOnplaying {}

extension Tag.Audio: HasOnplaying {}
extension Tag.Video: HasOnplaying {}

/// Execute JavaScript when media is ready to start after having been paused.
///
/// - Parameter javascript: JavaScript to execute.
public func onplaying<T: HasOnplaying>(_ javascript: StaticString) -> Attribute<T> {
  return onplaying(unsafe: String(describing: javascript))
}

/// Execute JavaScript when media is ready to start after having been paused.
///
/// - Parameter javascript: JavaScript to execute.
public func onplaying<T: HasOnplaying>(unsafe javascript: String) -> Attribute<T> {
  return .init("onplaying", javascript)
}

public func onpopstate(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onpopstate(unsafe: String(describing: javascript))
}

public func onpopstate(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onpopstate", javascript)
}

public protocol HasOnprogress {}

extension Tag.Audio: HasOnprogress {}
extension Tag.Video: HasOnprogress {}

/// Execute JavaScript when media is downloading.
///
/// - Parameter javascript: JavaScript to execute.
public func onprogress<T: HasOnprogress>(_ javascript: StaticString) -> Attribute<T> {
  return onprogress(unsafe: String(describing: javascript))
}

/// Execute JavaScript when media is downloading.
///
/// - Parameter javascript: JavaScript to execute.
public func onprogress<T: HasOnprogress>(unsafe javascript: String) -> Attribute<T> {
  return .init("onprogress", javascript)
}

public protocol HasOnratechange {}

extension Tag.Audio: HasOnratechange {}
extension Tag.Video: HasOnratechange {}

/// Execute JavaScript when the playing speed of media is changed.
///
/// - Parameter javascript: JavaScript to execute.
public func onratechange<T: HasOnratechange>(_ javascript: StaticString) -> Attribute<T> {
  return onratechange(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the playing speed of media is changed.
///
/// - Parameter javascript: JavaScript to execute.
public func onratechange<T: HasOnratechange>(unsafe javascript: String) -> Attribute<T> {
  return .init("onratechange", javascript)
}

/// Execute JavaScript when a form is reset.
///
/// - Parameter javascript: JavaScript to execute.
public func onreset(_ javascript: StaticString) -> Attribute<Tag.Form> {
  return onreset(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a form is reset.
///
/// - Parameter javascript: JavaScript to execute.
public func onreset(unsafe javascript: String) -> Attribute<Tag.Form> {
  return .init("onreset", javascript)
}

/// Execute JavaScript when the browser window is resized.
///
/// - Parameter javascript: JavaScript to execute.
public func onresize(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onresize(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the browser window is resized.
///
/// - Parameter javascript: JavaScript to execute.
public func onresize(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onresize", javascript)
}

/// Execute JavaScript when an element is being scrolled.
///
/// - Parameter javascript: JavaScript to execute.
public func onscroll<T>(_ javascript: StaticString) -> Attribute<T> {
  return onscroll(unsafe: String(describing: javascript))
}

/// Execute JavaScript when an element is being scrolled.
///
/// - Parameter javascript: JavaScript to execute.
public func onscroll<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onscroll", javascript)
}

/// Execute JavaScript when submitting a search.
///
/// - Parameter javascript: JavaScript to execute.
public func onsearch(_ javascript: StaticString) -> Attribute<Tag.Input> {
  return onsearch(unsafe: String(describing: javascript))
}

/// Execute JavaScript when submitting a search.
///
/// - Parameter javascript: JavaScript to execute.
public func onsearch(unsafe javascript: String) -> Attribute<Tag.Input> {
  return .init("onsearch", javascript)
}

public protocol HasOnseeked {}

extension Tag.Audio: HasOnseeked {}
extension Tag.Video: HasOnseeked {}

/// Execute JavaScript when the user is finished moving/skipping to a new position in media.
///
/// - Parameter javascript: JavaScript to execute.
public func onseeked<T: HasOnseeked>(_ javascript: StaticString) -> Attribute<T> {
  return onseeked(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user is finished moving/skipping to a new position in media.
///
/// - Parameter javascript: JavaScript to execute.
public func onseeked<T: HasOnseeked>(unsafe javascript: String) -> Attribute<T> {
  return .init("onseeked", javascript)
}

public protocol HasOnseeking {}

extension Tag.Audio: HasOnseeking {}
extension Tag.Video: HasOnseeking {}

/// Execute JavaScript when the user starts moving/skipping to a new position in the media.
///
/// - Parameter javascript: JavaScript to execute.
public func onseeking<T: HasOnseeking>(_ javascript: StaticString) -> Attribute<T> {
  return onseeking(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user starts moving/skipping to a new position in the media.
///
/// - Parameter javascript: JavaScript to execute.
public func onseeking<T: HasOnseeking>(unsafe javascript: String) -> Attribute<T> {
  return .init("onseeking", javascript)
}

public protocol HasOnselect {}

extension Tag.Input: HasOnselect {}
extension Tag.Textarea: HasOnselect {}

/// Execute JavaScript when some text has been selected.
///
/// - Parameter javascript: JavaScript to execute.
public func onselect<T: HasOnselect>(_ javascript: StaticString) -> Attribute<T> {
  return onselect(unsafe: String(describing: javascript))
}

/// Execute JavaScript when some text has been selected.
///
/// - Parameter javascript: JavaScript to execute.
public func onselect<T: HasOnselect>(unsafe javascript: String) -> Attribute<T> {
  return .init("onselect", javascript)
}

public protocol HasOnstalled {}

extension Tag.Audio: HasOnstalled {}
extension Tag.Video: HasOnstalled {}

/// Execute JavaScript when the browser is trying to get media data, but data is not available.
///
/// - Parameter javascript: JavaScript to execute.
public func onstalled<T: HasOnstalled>(_ javascript: StaticString) -> Attribute<T> {
  return onstalled(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the browser is trying to get media data, but data is not available.
///
/// - Parameter javascript: JavaScript to execute.
public func onstalled<T: HasOnstalled>(unsafe javascript: String) -> Attribute<T> {
  return .init("onstalled", javascript)
}

public func onstorage(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onstorage(unsafe: String(describing: javascript))
}

public func onstorage(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onstorage", javascript)
}

/// Execute JavaScript when a form is submitted.
///
/// - Parameter javascript: JavaScript to execute.
public func onsubmit(_ javascript: StaticString) -> Attribute<Tag.Form> {
  return onsubmit(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a form is submitted.
///
/// - Parameter javascript: JavaScript to execute.
public func onsubmit(unsafe javascript: String) -> Attribute<Tag.Form> {
  return .init("onsubmit", javascript)
}

public protocol HasOnsuspend {}

extension Tag.Audio: HasOnsuspend {}
extension Tag.Video: HasOnsuspend {}

/// Execute JavaScript when the browser is intentionally not getting media data.
///
/// - Parameter javascript: JavaScript to execute.
public func onsuspend<T: HasOnsuspend>(_ javascript: StaticString) -> Attribute<T> {
  return onsuspend(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the browser is intentionally not getting media data.
///
/// - Parameter javascript: JavaScript to execute.
public func onsuspend<T: HasOnsuspend>(unsafe javascript: String) -> Attribute<T> {
  return .init("onsuspend", javascript)
}

public protocol HasOntimeupdate {}

extension Tag.Audio: HasOntimeupdate {}
extension Tag.Video: HasOntimeupdate {}

/// Execute JavaScript when the current playback position has changed.
///
/// - Parameter javascript: JavaScript to execute.
public func ontimeupdate<T: HasOntimeupdate>(_ javascript: StaticString) -> Attribute<T> {
  return ontimeupdate(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the current playback position has changed.
///
/// - Parameter javascript: JavaScript to execute.
public func ontimeupdate<T: HasOntimeupdate>(unsafe javascript: String) -> Attribute<T> {
  return .init("ontimeupdate", javascript)
}

/// Execute JavaScript when a `<details>` element is opened or closed.
///
/// - Parameter javascript: JavaScript to execute.
public func ontoggle(_ javascript: StaticString) -> Attribute<Tag.Details> {
  return ontoggle(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a `<details>` element is opened or closed.
///
/// - Parameter javascript: JavaScript to execute.
public func ontoggle(unsafe javascript: String) -> Attribute<Tag.Details> {
  return .init("ontoggle", javascript)
}

/// Execute JavaScript when a user unloads the document.
///
/// - Parameter javascript: JavaScript to execute.
public func onunload(_ javascript: StaticString) -> Attribute<Tag.Body> {
  return onunload(unsafe: String(describing: javascript))
}

/// Execute JavaScript when a user unloads the document.
///
/// - Parameter javascript: JavaScript to execute.
public func onunload(unsafe javascript: String) -> Attribute<Tag.Body> {
  return .init("onunload", javascript)
}

public protocol HasOnvolumechange {}

extension Tag.Audio: HasOnvolumechange {}
extension Tag.Video: HasOnvolumechange {}

/// Execute JavaScript when the volume of a video has been changed.
///
/// - Parameter javascript: JavaScript to execute.
public func onvolumechange<T: HasOnvolumechange>(_ javascript: StaticString) -> Attribute<T> {
  return onvolumechange(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the volume of a video has been changed.
///
/// - Parameter javascript: JavaScript to execute.
public func onvolumechange<T: HasOnvolumechange>(unsafe javascript: String) -> Attribute<T> {
  return .init("onvolumechange", javascript)
}

public protocol HasOnwaiting {}

extension Tag.Audio: HasOnwaiting {}
extension Tag.Video: HasOnwaiting {}

/// Execute JavaScript when the media stops because it needs to buffer the next frame.
///
/// - Parameter javascript: JavaScript to execute.
public func onwaiting<T: HasOnwaiting>(_ javascript: StaticString) -> Attribute<T> {
  return onwaiting(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the media stops because it needs to buffer the next frame.
///
/// - Parameter javascript: JavaScript to execute.
public func onwaiting<T: HasOnwaiting>(unsafe javascript: String) -> Attribute<T> {
  return .init("onwaiting", javascript)
}

/// Execute JavaScript when the user rolls the mouse wheel over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onwheel<T>(_ javascript: StaticString) -> Attribute<T> {
  return onwheel(unsafe: String(describing: javascript))
}

/// Execute JavaScript when the user rolls the mouse wheel over an element.
///
/// - Parameter javascript: JavaScript to execute.
public func onwheel<T>(unsafe javascript: String) -> Attribute<T> {
  return .init("onwheel", javascript)
}
