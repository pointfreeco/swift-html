extension Node {
  public static func element<T>(_ name: StaticString, attributes: [Attribute<T>] = [], _ children: Node...) -> Node {
    return .element(String(describing: name), attributes.map { ($0.key, $0.value) }, .fragment(children))
  }

  /// The `<a>` element represents either a hyperlink (a hypertext anchor) labeled by its contents, or a placeholder for where a link might otherwise have been placed, if it had been relevant, consisting of just the element's contents.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func a(attributes: [Attribute<Tag.A>] = [], _ content: Node...) -> Node {
    return .element("a", attributes: attributes, .fragment(content))
  }

  /// The `<abbr>` element represents an abbreviation or acronym, optionally with its expansion.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func abbr(attributes: [Attribute<Tag.Abbr>] = [], _ content: Node...) -> Node {
    return .element("abbr", attributes: attributes, .fragment(content))
  }

  /// The `<address>` element represents contact information for a person, people or organization. It should include physical and/or digital location/contact information and a means of identifying a person(s) or organization the information pertains to.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func address(attributes: [Attribute<Tag.Address>] = [], _ content: Node...) -> Node {
    return .element("address", attributes: attributes, .fragment(content))
  }

  /// The `<article>` element represents a complete, or self-contained, composition in a document, page, application, or site. This could be a magazine, newspaper, technical or scholarly article, an essay or report, a blog or other social media post.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func article(attributes: [Attribute<Tag.Article>] = [], _ content: Node...) -> Node {
    return .element("article", attributes: attributes, .fragment(content))
  }

  /// The `<aside>` element represents a section of a page that consists of content that is tangentially related to the content of the parenting sectioning content, and which could be considered separate from that content. Such sections are often represented as sidebars in printed typography.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func aside(attributes: [Attribute<Tag.Aside>] = [], _ content: Node...) -> Node {
    return .element("aside", attributes: attributes, .fragment(content))
  }

  /// An `<audio>` element represents a sound or audio stream.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  ///   - transparent: Additional child nodes that render as content for older Web browsers which do not support `<audio>`
  public static func audio(
    attributes: [Attribute<Tag.Audio>] = [],
    _ content: ChildOf<Tag.Audio>...,
    transparent: Node = [])
    -> Node {

      return .element("audio", attributes: attributes, .fragment(content.map { $0.rawValue } + [transparent]))
  }

  /// The `<b>` element represents a span of text to which attention is being drawn for utilitarian purposes without conveying any extra importance and with no implication of an alternate voice or mood, such as key words in a document abstract, product names in a review, actionable words in interactive text-driven software, or an article lede.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func b(attributes: [Attribute<Tag.B>] = [], _ content: Node...) -> Node {
    return .element("b", attributes: attributes, .fragment(content))
  }

  /// The `<bdi>` element represents a span of text that is to be isolated from its surroundings for the purposes of bidirectional text formatting.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func bdi(attributes: [Attribute<Tag.Bdi>] = [], _ content: Node...) -> Node {
    return .element("bdi", attributes: attributes, .fragment(content))
  }

  /// A sub-set of directions, valid for `<bdo>` elements.
  public enum BdoDirection: String {
    /// Left-to-right.
    case ltr
    /// Right-to-left.
    case rtl
  }

  /// The `<bdo>` element represents explicit text directionality formatting control for its children. It allows authors to override the Unicode bidirectional algorithm by explicitly specifying a direction override.
  ///
  /// - Parameters:
  ///   - dir: The element's text directionality.
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func bdo(dir: BdoDirection, attributes: [Attribute<Tag.Bdi>] = [], _ content: Node...)
    -> Node {
      return .element("bdo", attributes: [.init("dir", dir.rawValue)] + attributes, .fragment(content))
  }

  /// The `<blockquote>` element represents content that is quoted from another source, optionally with a citation which must be within a `<footer>` or `<cite>` element, and optionally with in-line changes such as annotations and abbreviations.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func blockquote(attributes: [Attribute<Tag.Blockquote>] = [], _ content: Node...) -> Node {
    return .element("blockquote", attributes: attributes, .fragment(content))
  }

  /// The `<br>` element represents a line break.
  public static let br: Node = .element("br", [], [])

  /// The `<button>` element represents a control allowing a user to trigger actions, when enabled. It is labeled by its content.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func button(attributes: [Attribute<Tag.Button>] = [], _ content: Node...) -> Node {
    return .element("button", attributes: attributes, .fragment(content))
  }

  /// The `<canvas>` element provides scripts with a resolution-dependent bitmap canvas, which can be used for rendering graphs, game graphics, art, or other visual images on the fly.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func canvas(attributes: [Attribute<Tag.Canvas>] = [], _ content: Node...) -> Node {
    return .element("canvas", attributes: attributes, .fragment(content))
  }

  /// The `<cite>` element represents a reference to a creative work. It must include the title of the work or the name of the author (person, people or organization) or an URL reference, or a reference in abbreviated form as per the conventions used for the addition of citation metadata.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func cite(attributes: [Attribute<Tag.Cite>] = [], _ content: Node...) -> Node {
    return .element("cite", attributes: attributes, .fragment(content))
  }

  /// The `<code>` element represents a fragment of computer code. This could be an XML element name, a file name, a computer program, or any other string that a computer would recognize.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func code(attributes: [Attribute<Tag.Code>] = [], _ content: Node...) -> Node {
    return .element("code", attributes: attributes, .fragment(content))
  }

  /// The `<del>` element represents a removal from the document.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func del(attributes: [Attribute<Tag.Del>] = [], _ content: Node...) -> Node {
    return .element("del", attributes: attributes, .fragment(content))
  }

  /// The `<details>` element represents a disclosure widget from which the user can obtain additional information or controls.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - summary: A summary.
  ///   - content: Child nodes.
  public static func details(
    attributes: [Attribute<Tag.Details>] = [],
    _ summary: ChildOf<Tag.Details>,
    _ content: Node...
    )
    -> Node {

      return details(attributes: attributes, summary.rawValue, .fragment(content))
  }

  /// The `<details>` element represents a disclosure widget from which the user can obtain additional information or controls.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func details(
    attributes: [Attribute<Tag.Details>] = [],
    _ content: Node...
    )
    -> Node {

      return .element("details", attributes: attributes, .fragment(content))
  }

  /// The `<dfn>` element represents the defining instance of a term. The term-description group, `<p>`, `<li>` or `<section>` element that is the nearest ancestor of the `<dfn>` element must also contain the definition(s) for the term given by the `<dfn>` element.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func dfn(attributes: [Attribute<Tag.Dfn>] = [], _ content: Node...) -> Node {
    return .element("dfn", attributes: attributes, .fragment(content))
  }

  /// The `<div>` element has no special meaning at all. It represents its children. It can be used with the `class`, `lang`, and `title` attributes to mark up semantics common to a group of consecutive elements.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func div(attributes: [Attribute<Tag.Div>] = [], _ content: Node...) -> Node {
    return .element("div", attributes: attributes, .fragment(content))
  }

  /// The `<dl>` element represents a description list of zero or more term-description groups. Each term-description group consists of one or more terms (represented by `<dt>` elements) possibly as children of a `<div>` element child, and one or more descriptions (represented by `<dd>` elements possibly as children of a `<div>` element child), ignoring any nodes other than `<dt>` and `<dd>` element children, and `<dt>` and `<dd>` elements that are children of `<div>` element children within a single `<dl>` element.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func dl(attributes: [Attribute<Tag.Dl>] = [], _ content: ChildOf<Tag.Dl>...) -> Node {
    return .element("dl", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<em>` element represents stress emphasis of its contents.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func em(attributes: [Attribute<Tag.Em>] = [], _ content: Node...) -> Node {
    return .element("em", attributes: attributes, .fragment(content))
  }

  /// The `<embed>` element provides an integration point for an external (typically non-HTML) application or interactive content.
  ///
  /// - Parameter attributes: Attributes.
  public static func embed(attributes: [Attribute<Tag.Embed>] = []) -> Node {
    return .element("embed", attributes: attributes, [])
  }

  /// The `<fieldset>` element represents a set of form controls optionally grouped under a common name.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - legend: A legend.
  ///   - content: Child nodes.
  public static func fieldset(
    attributes: [Attribute<Tag.Fieldset>] = [],
    _ legend: ChildOf<Tag.Fieldset>,
    _ content: Node...
    )
    -> Node {

      return .fieldset(attributes: attributes, legend.rawValue, .fragment(content))
  }

  /// The `<fieldset>` element represents a set of form controls optionally grouped under a common name.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func fieldset(
    attributes: [Attribute<Tag.Fieldset>] = [],
    _ content: Node...
    )
    -> Node {

      return .element("fieldset", attributes: attributes, .fragment(content))
  }

  /// The `<figure>` element represents some flow content, optionally with a caption, that is self-contained (like a complete sentence) and is typically referenced as a single unit from the main flow of the document.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func figure(attributes: [Attribute<Tag.Figure>] = [], _ content: ChildOf<Tag.Figure>...) -> Node {
    return .element("figure", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<footer>` element represents a footer for its nearest ancestor `<main>` element or sectioning content or sectioning root element. A footer typically contains information about its section, such as who wrote it, links to related documents, copyright data, and the like.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func footer(attributes: [Attribute<Tag.Footer>] = [], _ content: Node...) -> Node {
    return .element("footer", attributes: attributes, .fragment(content))
  }

  /// The `<form>` element represents a collection of form-associated elements, some of which can represent editable values that can be submitted to a server for processing.
  ///
  /// - Parameters:
  ///   - enctype: Enctype to use for form encoding.
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func form(enctype: Attribute<Tag.Form>.Enctype, attributes: [Attribute<Tag.Form>] = [], _ content: Node...) -> Node {
    return form(attributes: [.method(.post), .enctype(enctype)] + attributes, .fragment(content))
  }

  /// The `<form>` element represents a collection of form-associated elements, some of which can represent editable values that can be submitted to a server for processing.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func form(attributes: [Attribute<Tag.Form>] = [], _ content: Node...) -> Node {
    return .element("form", attributes: attributes, .fragment(content))
  }

  /// These elements represent headings for their sections. The `<h1>` element has the highest rank.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func h1(attributes: [Attribute<Tag.H1>] = [], _ content: Node...) -> Node {
    return .element("h1", attributes: attributes, .fragment(content))
  }

  /// These elements represent headings for their sections. The `<h2>` element has the second-highest rank.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func h2(attributes: [Attribute<Tag.H2>] = [], _ content: Node...) -> Node {
    return .element("h2", attributes: attributes, .fragment(content))
  }

  /// These elements represent headings for their sections. The `<h3>` element has the third-highest rank.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func h3(attributes: [Attribute<Tag.H3>] = [], _ content: Node...) -> Node {
    return .element("h3", attributes: attributes, .fragment(content))
  }

  /// These elements represent headings for their sections. The `<h4>` element has the fourth-highest rank.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func h4(attributes: [Attribute<Tag.H4>] = [], _ content: Node...) -> Node {
    return .element("h4", attributes: attributes, .fragment(content))
  }

  /// These elements represent headings for their sections. The `<h5>` element has the fifth-highest rank.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func h5(attributes: [Attribute<Tag.H5>] = [], _ content: Node...) -> Node {
    return .element("h5", attributes: attributes, .fragment(content))
  }

  /// These elements represent headings for their sections. The `<h6>` element has the lowest rank.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func h6(attributes: [Attribute<Tag.H6>] = [], _ content: Node...) -> Node {
    return .element("h6", attributes: attributes, .fragment(content))
  }

  /// The `<head> element represents a collection of metadata for the `Document`.
  ///
  /// - Parameter content: Child nodes.
  ///
  /// - Parameters:
  ///   - title: Content for the `<title>` element.
  ///   - content: Child nodes.
  //public static func head(title: String, content: ChildOf<Tag.Head> = []) -> ChildOf<Tag.Html> {
  //  return head([Html.title(title).rawValue, content.rawValue])
  //}

  /// The `<header>` element represents introductory content for its nearest ancestor `<main>` element or sectioning content or sectioning root element. A `<header>` typically contains a group of introductory or navigational aids.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func header(attributes: [Attribute<Tag.Header>] = [], _ content: Node...) -> Node {
    return .element("header", attributes: attributes, .fragment(content))
  }

  /// The `<hr>` element represents a paragraph-level thematic break, e.g., a scene change in a story, or a transition to another topic within a section of a reference book.
  public static let hr: Node = .element("hr", [], [])

  /// The `<hr>` element represents a paragraph-level thematic break, e.g., a scene change in a story, or a transition to another topic within a section of a reference book.
  ///
  /// - Parameter attributes: Attributes.
  public static func hr(attributes: [Attribute<Tag.Hr>] = []) -> Node {
    return .element("hr", attributes: attributes, [])
  }

  /// The `<html>` element represents the root of an HTML document.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func html(attributes: [Attribute<Tag.Html>] = [], _ content: ChildOf<Tag.Html>...) -> Node {
    return .element("html", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<i>` element represents a span of text in an alternate voice or mood, or otherwise offset from the normal prose in a manner indicating a different quality of text, such as a taxonomic designation, a technical term, an idiomatic phrase from another language, transliteration, a thought, or a ship name in Western texts.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func i(attributes: [Attribute<Tag.I>] = [], _ content: Node...) -> Node {
    return .element("i", attributes: attributes, .fragment(content))
  }

  /// The `<iframe>` element represents a nested browsing context.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func iframe(attributes: [Attribute<Tag.Iframe>] = [], _ content: Node...) -> Node {
    return .element("iframe", attributes: attributes, .fragment(content))
  }

  /// An `<img>` element represents an image and its fallback content.
  ///
  /// - Parameter attributes: Attributes.
  public static func img(attributes: [Attribute<Tag.Img>] = []) -> Node {
    return .element("img", attributes: attributes, [])
  }

  /// An `<img>` element represents an image and its fallback content.
  ///
  /// - Parameters:
  ///   - src: Address of the resource.
  ///   - alt: Replacement text for use when images are not available.
  ///   - attributes: Additional attributes.
  public static func img(src: String, alt: String, attributes: [Attribute<Tag.Img>] = []) -> Node {
    return img(attributes: [.src(src), .alt(alt)] + attributes)
  }

  /// An `<img>` element represents an image and its fallback content.
  ///
  /// - Parameters:
  ///   - base64: A base64-encoded image.
  ///   - type: The image's content encoding.
  ///   - alt: Replacement text for use when images are not available.
  ///   - attributes: Additional attributes.
  public static func img(base64: String, type: MediaType, alt: String, attributes: [Attribute<Tag.Img>] = [])
    -> Node {

      return img(src: "data:\(type.description);base64,\(base64)", alt: alt, attributes: attributes)
  }

  /// The `<input>` element represents a typed data field, usually with a form control to allow the user to edit the data.
  ///
  /// - Parameter attributes: Attributes.
  public static func input(attributes: [Attribute<Tag.Input>] = []) -> Node {
    return .element("input", attributes: attributes, [])
  }

  /// The `<ins>` element represents an addition to the document.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func ins(attributes: [Attribute<Tag.Ins>] = [], _ content: Node...) -> Node {
    return .element("ins", attributes: attributes, .fragment(content))
  }

  /// The `<kbd>` element represents user input (typically keyboard input, although it may also be used to represent other input, such as voice commands).
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func kbd(attributes: [Attribute<Tag.Kbd>] = [], _ content: Node...) -> Node {
    return .element("kbd", attributes: attributes, .fragment(content))
  }
  /// The `<label>` element represents a caption in a user interface. The caption can be associated with a specific form control, known as the `<label>` element's **labeled control**, either using the `for` attribute, or by putting the form control inside the `<label>` element itself.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func label(attributes: [Attribute<Tag.Label>] = [], _ content: Node...) -> Node {
    return .element("label", attributes: attributes, .fragment(content))
  }

  /// The `<main>` element represents the main content of the `<body>` of a document or application.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func main(attributes: [Attribute<Tag.Main>] = [], _ content: Node...) -> Node {
    return .element("main", attributes: attributes, .fragment(content))
  }

  /// The `<map>` element, in conjunction with an `<img>` element and any `<area>` element descendants, defines an image map. The element represents its children.
  ///
  /// - Parameters:
  ///   - name: The `name` attribute gives the map a name so that it can be referenced. The attribute must be present and must have a non-empty value with no space characters. The value of the `name` attribute must not be a compatibility caseless match for the value of the `name` attribute of another `<map>` element in the same document. If the `id` attribute is also specified, both attributes must have the same value.
  ///   - attributes: Additional attributes.
  ///   - content: Child nodes.
  public static func map(name: String, attributes: [Attribute<Tag.Map>] = [], _ content: ChildOf<Tag.Map>...)
    -> Node {

      return .element("map", attributes: [.name(name)] + attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<mark>` element represents a run of text in one document marked or highlighted for reference purposes, due to its relevance in another context. When used in a quotation or other block of text referred to from the prose, it indicates a highlight that was not originally present but which has been added to bring the reader's attention to a part of the text that might not have been considered important by the original author when the block was originally written, but which is now under previously unexpected scrutiny. When used in the main prose of a document, it indicates a part of the document that has been highlighted due to its likely relevance to the user's current activity.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func mark(attributes: [Attribute<Tag.Mark>] = [], _ content: Node...) -> Node {
    return .element("mark", attributes: attributes, .fragment(content))
  }

  /// The `<meter>` element represents a scalar measurement within a known range, or a fractional value; for example disk usage, the relevance of a query result, or the fraction of a voting population to have selected a particular candidate.
  ///
  /// - Parameters:
  ///   - value: The `value` attribute specifies the value to have the gauge indicate as the "measured" value.
  ///   - attributes: Additional attributes.
  ///   - content: Child nodes.
  public static func meter(value: Double, attributes: [Attribute<Tag.Meter>] = [], _ content: Node...) -> Node {
    return .element("meter", attributes: [.value(value)] + attributes, .fragment(content))
  }

  /// The `<nav>` element represents a section of a page that links to other pages or to parts within the page: a section with navigation links.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func nav(attributes: [Attribute<Tag.Nav>] = [], _ content: Node...) -> Node {
    return .element("nav", attributes: attributes, .fragment(content))
  }

  // TODO: Required attribute "data" or "type"
  /// The `<object>` element can represent an external resource, which, depending on the type of the resource, will either be treated as an image, as a nested browsing context, or as an external resource to be processed by a plugin.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func object(attributes: [Attribute<Tag.Object>] = [], _ content: ChildOf<Tag.Object>...) -> Node {
    return .element("object", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<ol>` element represents a list of items, where the items have been intentionally ordered, such that changing the order would change the meaning of the document.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func ol(attributes: [Attribute<Tag.Ol>] = [], _ content: ChildOf<Tag.Ol>...) -> Node {
    return .element("ol", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<optgroup>` element represents a group of `<option>` elements with a common label.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func optgroup(attributes: [Attribute<Tag.Optgroup>] = [], _ content: ChildOf<Tag.Optgroup>...)
    -> Node {
      return .element("optgroup", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<output>` element represents the result of a calculation performed by the application, or the result
  /// of a user action.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func output(attributes: [Attribute<Tag.Output>] = [], _ content: Node...) -> Node {
    return .element("output", attributes: attributes, .fragment(content))
  }

  /// The `<p>` element represents a paragraph.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func p(attributes: [Attribute<Tag.P>] = [], _ content: Node...) -> Node {
    return .element("p", attributes: attributes, .fragment(content))
  }

  //public static func picture(
  //  attributes: [Attribute<Tag.Picture>],
  //  _ content: [ChildOf<Tag.Picture>],
  //  src: String,
  //  alt: String,
  //  _ imgattributes: [Attribute<Tag.Img>] = [])
  //  -> Node {
  //
  //    return .element("picture", attributes: attributes, content.map { $0.rawValue } + [img(src: src, alt: alt, imgattributes)])
  //}

  //public static func picture(
  //  _ content: [ChildOf<Tag.Picture>],
  //  src: String,
  //  alt: String,
  //  _ imgattributes: [Attribute<Tag.Img>] = [])
  //  -> Node {
  //
  //    return picture([], content, src: src, alt: alt, imgattributes)
  //}

  /// The `<pre>` element represents a block of preformatted text, in which structure is represented by typographic conventions rather than by elements.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func pre(attributes: [Attribute<Tag.Pre>] = [], _ content: Node...) -> Node {
    return .element("pre", attributes: attributes, .fragment(content))
  }

  /// The `<q>` element represents some phrasing content quoted from another source.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func q(attributes: [Attribute<Tag.Q>] = [], _ content: Node...) -> Node {
    return .element("q", attributes: attributes, .fragment(content))
  }

  /// The `<s>` element represents contents that are no longer accurate or no longer relevant.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func s(attributes: [Attribute<Tag.S>] = [], _ content: Node...) -> Node {
    return .element("s", attributes: attributes, .fragment(content))
  }

  /// The `samp` element represents sample or quoted output from another program or computing system.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func samp(attributes: [Attribute<Tag.Samp>] = [], _ content: Node...) -> Node {
    return .element("samp", attributes: attributes, .fragment(content))
  }

  /// The `<script>` element allows authors to include dynamic script and data blocks in their documents. The element does not represent content for the user.
  ///
  /// - Parameter attributes: Attributes.
  public static func script(attributes: [Attribute<Tag.Script>]) -> Node {
    return script(attributes: attributes, safe: "")
  }

  /// The `<script>` element allows authors to include dynamic script and data blocks in their documents. The element does not represent content for the user.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: JavaScript.
  public static func script(attributes: [Attribute<Tag.Script>] = [], safe content: StaticString) -> Node {
    return script(attributes: attributes, unsafe: String(describing: content))
  }

  /// The `<script>` element allows authors to include dynamic script and data blocks in their documents. The element does not represent content for the user.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: JavaScript.
  public static func script(attributes: [Attribute<Tag.Script>] = [], unsafe content: String) -> Node {
    return .element("script", attributes: attributes, [.raw(escape(rawText: content, for: "script"))])
  }

  /// The `<section>` element represents a generic section of a document or application. A section, in this context, is a thematic grouping of content. Each `<section>` should be identified, typically by including a heading (`<h1>`-`<h6>` element) as a child of the section element.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func section(attributes: [Attribute<Tag.Section>] = [], _ content: Node...) -> Node {
    return .element("section", attributes: attributes, .fragment(content))
  }

  /// The `<select>` element represents a control for selecting amongst a set of options.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func select(attributes: [Attribute<Tag.Select>] = [], _ content: ChildOf<Tag.Select>...) -> Node {
    return .element("select", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<small>` element represents side comments such as small print.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func small(attributes: [Attribute<Tag.Small>] = [], _ content: Node...) -> Node {
    return .element("small", attributes: attributes, .fragment(content))
  }

  /// The `<span>` element doesn't mean anything on its own, but can be useful when used together with the global attributes, e.g., `class`, `lang`, or `dir`. It represents its children.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func span(attributes: [Attribute<Tag.Span>] = [], _ content: Node...) -> Node {
    return .element("span", attributes: attributes, .fragment(content))
  }

  /// The `<strong>` element represents strong importance, seriousness, or urgency for its contents.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func strong(attributes: [Attribute<Tag.Strong>] = [], _ content: Node...) -> Node {
    return .element("strong", attributes: attributes, .fragment(content))
  }

  /// The `<sub>` element represents a subscript.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func sub(attributes: [Attribute<Tag.Sub>] = [], _ content: Node...) -> Node {
    return .element("sub", attributes: attributes, .fragment(content))
  }

  /// The `<sup>` element represents a superscript.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func sup(attributes: [Attribute<Tag.Sup>] = [], _ content: Node...) -> Node {
    return .element("sup", attributes: attributes, .fragment(content))
  }

  public static func svg(attributes: [Attribute<Tag.Svg>] = [], safe content: StaticString) -> Node {
    return svg(attributes: attributes, unsafe: String(describing: content))
  }

  public static func svg(attributes: [Attribute<Tag.Svg>] = [], unsafe content: String) -> Node {
    return .element("svg", attributes: attributes, [.raw(content)])
  }

  /// The `<table>` element represents data with more than one dimension, in the form of a table.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func table(attributes: [Attribute<Tag.Table>] = [], _ content: ChildOf<Tag.Table>...) -> Node {
    return .element("table", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  public static func template(attributes: [Attribute<Tag.Template>] = [], _ content: Node...) -> Node {
    return .element("template", attributes: attributes, .fragment(content))
  }

  /// The `<textarea>` element represents a multiline plain text edit control for the element's raw value. The contents of the control represent the control's default value.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Text content.
  public static func textarea(attributes: [Attribute<Tag.Textarea>] = [], _ content: String = "") -> Node {
    return .element("textarea", attributes: attributes, [.raw(escape(rawText: content, for: "textarea"))])
  }

  /// The `<time>` element represents its contents, along with a machine-readable form of those contents in the datetime attribute. The kind of content is limited to various kinds of dates, times, time-zone offsets, and durations, as described below.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func time(attributes: [Attribute<Tag.Time>] = [], _ content: Node...) -> Node {
    return .element("time", attributes: attributes, .fragment(content))
  }

  /// The `<u> element represents a span of text with an unarticulated, though explicitly rendered, non-textual
  /// annotation, such as labeling the text as being a proper name in Chinese text (a Chinese proper name mark),
  /// or labeling the text as being misspelt.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func u(attributes: [Attribute<Tag.U>] = [], _ content: Node...) -> Node {
    return .element("u", attributes: attributes, .fragment(content))
  }

  /// The `<ul>` element represents a list of items, where the order of the items is not important — that is, where changing the order would not materially change the meaning of the document.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func ul(attributes: [Attribute<Tag.Ul>] = [], _ content: ChildOf<Tag.Ul>...) -> Node {
    return .element("ul", attributes: attributes, ChildOf.fragment(content).rawValue)
  }

  /// The `<var>` element represents a variable. This could be an actual variable in a mathematical expression or programming context, an identifier representing a constant, a symbol identifying a physical quantity, a function parameter, or just be a term used as a placeholder in prose.
  ///
  /// - Parameters:
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  public static func `var`(attributes: [Attribute<Tag.Var>] = [], _ content: Node...) -> Node {
    return .element("var", attributes: attributes, .fragment(content))
  }

  /// A `<video>` element is used for playing videos or movies, and audio files with captions.
  ///
  ///   - attributes: Attributes.
  ///   - content: Child nodes.
  ///   - transparent: Additional child nodes that render as content for older Web browsers which do not support `<video>`
  public static func video(
    attributes: [Attribute<Tag.Video>] = [],
    _ content: ChildOf<Tag.Video>...,
    transparent: Node = []
    )
    -> Node {

      return .element("video", attributes: attributes, [ChildOf.fragment(content).rawValue, transparent])
  }

  /// The `<wbr>` element represents a line break opportunity.
  public static let wbr: Node = .element("wbr", [], [])
}

internal func escape(rawText: String, for tag: String) -> String {
  return rawText.replacingOccurrences(of: "<(\\s*/\(tag)\\s*>)", with: "&lt;/$1>", options: .regularExpression)
}
