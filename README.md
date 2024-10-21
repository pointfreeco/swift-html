# 🗺 swift-html

[![CI](https://github.com/pointfreeco/swift-html/workflows/CI/badge.svg)](https://github.com/pointfreeco/swift-html/actions?query=workflow%3ACI)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fpointfreeco%2Fswift-html%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/pointfreeco/swift-html)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fpointfreeco%2Fswift-html%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/pointfreeco/swift-html)

A Swift DSL for type-safe, extensible, and transformable HTML documents.

## Table of Contents

  - [Motivation](#motivation)
  - [Examples](#examples)
  - [Safety](#safety)
  - [Design](#design)
  - [FAQ](#faq)
  - [Installation](#installation)
  - [Interested in learning more?](#interested-in-learning-more)
  - [License](#license)

## Motivation

The popular choice for rendering HTML in Swift these days is to use templating languages, but they expose your application to **runtime errors** and **invalid HTML**. Our library prevents these runtime issues at compile-time by embedding HTML directly into Swift’s powerful type system.

## Examples

HTML documents can be created in a tree-like fashion, much like you might create a nested JSON document:

```swift
import Html

let document: Node = .document(
  .html(
    .body(
      .h1("Welcome!"),
      .p("You’ve found our site!")
    )
  )
)
```

Underneath the hood these tag functions `html`, `body`, `h1`, etc., are just creating and nesting instances of a `Node` type, which is a simple Swift enum. Because `Node` is just a simple Swift type, we can transform it in all kinds of interesting ways. For a silly example, what if we wanted to remove all instances of exclamation marks from our document?

```swift
func unexclaim(_ node: Node) -> Node {
  switch node {
  case .comment:
    // Don't need to transform HTML comments
    return node

  case .doctype:
    // Don't need to transform doctypes
    return node

  case let .element(tag, attrs, children):
    // Recursively transform all of the children of an element
    return .element(tag, attrs, unexclaim(children))

  case let .fragment(children):
    // Recursively transform all of the children of a fragment
    return .fragment(children.map(unexclaim))

  case let .raw(string):
    // Transform text nodes by replacing exclamation marks with periods.
    return .raw(string.replacingOccurrences(of: "!", with: "."))
  case let .text(string):
    // Transform text nodes by replacing exclamation marks with periods.
    return .text(string.replacingOccurrences(of: "!", with: "."))
  }
}

unexclaim(document)
```

Once your document is created you can render it using the `render` function:

```swift
render(document)
// <!doctype html><html><body><h1>Welcome!</h1><p>You’ve found our site!</p></body></html>
```

And of course you can first run the document through the `unexclaim` transformation, and then render it:

```swift
render(unexclaim(document))
// <!doctype html><html><body><h1>Welcome.</h1><p>You’ve found our site.</p></body></html>
```

Now the document is very stern and serious 😂.

## Safety

Because we are embedding our DSL in Swift we can take advantage of some advanced Swift features to add an extra layer of safety when constructing HTML documents. For a simple example, we can strengthen many HTML APIs to force their true types rather than just relying on strings. 

```swift 
let imgTag = Node.img(attributes: [.src("cat.jpg"), .width(400), .height(300)])

render(imgTag)
// <img src="cat.jpg" width="400" height="300">
```

Here the `src` attribute takes a string, but `width` and `height` take integers, as it’s invalid to put anything else in those attributes.

For a more advanced example, `<li>` tags can only be placed inside `<ol>` and `<ul>` tags, and we can represent this fact so that it’s impossible to construct an invalid document:

```swift
let listTag = Node.ul(
  .li("Cat"),
  .li("Dog"),
  .li("Rabbit")
) // ✅ Compiles!

render(listTag)
// <ul><li>Cat</li><li>Dog</li><li>Rabbit</li></ul>

Node.div(
  .li("Cat"),
  .li("Dog"),
  .li("Rabbit")
) // 🛑 Compile error
```

## Design

The core of the library is a single enum with 6 cases:

```swift
public enum Node {
  case comment(String)
  case doctype(String)
  indirect case element(String, [(key: String, value: String?)], Node)
  indirect case fragment([Node])
  case raw(String)
  case text(String)
}
```

This type allows you to express every HTML document that can ever exist. However, using this type directly can be a little unwieldy, so we provide a bunch of helper functions for constructing every element and attribute from the entire HTML spec in a type-safe manner:

```swift
// Not using helper functions
Node.element("html", [], [
  .element("body", [], [
    .element("p", [], [.text("You’ve found our site!")])
    ])
  ])

// versus

// Using helper functions
Node.html(
  .body(
    .h1("Welcome!"),
    .p("You’ve found our site!")
  )
)
```

This makes the “Swiftification” of an HTML document looks very similar to the original document.

## FAQ

### Can I use this with existing Swift web frameworks like Kitura and Vapor?

Yes! We even provide plug-in libraries that reduce the friction of using this library with Kitura and Vapor. Find out more information at the following repos:

- [swift-html-vapor](https://github.com/pointfreeco/swift-html-vapor)
- [~~swift-html-kitura~~](https://github.com/pointfreeco/swift-html-kitura)
 
### Why would I use this over a templating language?

Templating languages are popular and easy to get started with, but they have many drawbacks:

1. **Stringy APIs**: Templating languages are always stringly typed because you provide your template as a big ole string, and then at runtime the values are interpolated and logic is executed. This means things we take for granted in Swift, like the compiler catching typos and type mismatches, will go unnoticed until you run the code.

1. **Incomplete language**: Templating languages are just that: programming languages. That means you should expect from these languages all of the niceties you get from other fully-fledged languages like Swift. That includes syntax highlighting, IDE autocompletion, static analysis, refactoring tools, breakpoints, debugger, and a whole slew of features that make Swift powerful like let-bindings, conditionals, loops and more. However, the reality is that no templating language supports all of these features.

1. **Rigid**: Templating languages are rigid in that they do not allow the types of compositions and transformations we are used to performing on data structures in Swift. It is not possible to succinctly traverse over the documents you build, and inspect or transform the nodes you visit. This capability has many applications, such as being able to pretty print or minify your HTML output, or writing a transformation that allows you to inline a CSS stylesheet into an HTML node. There are entire worlds closed off to you due to how templating languages work.

The DSL in this library fixes all of these problems, and opens up doors that are completely closed to templating languages.

### When is it more appropriate to use a templating language over swift-html?

There are a few reasons you might want to still use a templating language:

1. A designer delivers a large HTML document to you and all you want to do is hook in a little bit of value interpolation or logic. In this case you can simply copy and paste that HTML into your template, add a few interpolation tokens, and you're well on your way to having a full page served from your web application.

1. You need to render non-HTML documents. The beauty of templating languages is that it outputs straight to plain text, and so it can model any type of document, whether it be HTML, markdown, XML, RSS, ATOM, LaTeX, and more.

1. Creating _very_ large documents in a single expression can cause compile times to go up, whereas templates are not compiled by Swift and so do not influence compile times. Luckily this isn't a problem too often because it is very easy to break up a document into as many small pieces as you want, which will probably lead to more reusable code in the long run.

If you do decide that a templating language better suites your needs, then you should consider [HypertextLiteral](https://github.com/NSHipster/HypertextLiteral), which gives you template-like capabilities but in a safer manner.

## Installation

You can add swift-html to an Xcode project by adding it as a package dependency.

> https://github.com/pointfreeco/swift-html

If you want to use swift-html in a [SwiftPM](https://swift.org/package-manager/) project, it's as simple as adding it to a `dependencies` clause in your `Package.swift`:

``` swift
dependencies: [
  .package(url: "https://github.com/pointfreeco/swift-html", from: "0.4.0")
]
```

## Interested in learning more?

These concepts (and more) are explored thoroughly in a series of episodes on [Point-Free](https://www.pointfree.co), a video series exploring functional programming and Swift hosted by [Brandon Williams](https://twitter.com/mbrandonw) and [Stephen Celis](https://twitter.com/stephencelis).

The ideas for this library were explored in the following episodes:

- [Episode 26](https://www.pointfree.co/episodes/ep26-domain-specific-languages-part-1): Domain Specific Languages: Part 1
- [Episode 27](https://www.pointfree.co/episodes/ep27-domain-specific-languages-part-2): Domain Specific Languages: Part 2
- [Episode 28](https://www.pointfree.co/episodes/ep28-an-html-dsl): An HTML DSL
- [Episode 29](https://www.pointfree.co/episodes/ep29-dsls-vs-templating-languages): 🆓 DSLs vs. Templating Languages

<a href="https://www.pointfree.co/episodes/ep26-domain-specific-languages-part-1">
  <img alt="video poster image" src="https://d1hf1soyumxcgv.cloudfront.net/0026-dsl-pt1/poster.jpg" width="480">
</a>

## License

All modules are released under the MIT license. See [LICENSE](LICENSE) for details.
