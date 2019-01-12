import Html
import HtmlSnapshotTesting
import SnapshotTesting
import XCTest

#if !os(Linux)
typealias SnapshotTestCase = XCTestCase
#endif

final class SnapshotTestingTests: SnapshotTestCase {
  func testComplexHtml() {
    let doc: Node = .document(
      .html(
        [.lang(.en)],
        .head(
          .meta([.charset(.utf8)]),
          .title("Subscribe to Point-Free"),
          .style("html{line-height:1.15;-webkit-text-size-adjust:100%}"),
          .meta(viewport: .width(.deviceWidth), .initialScale(1)),
          .link(
            [
              .href("https://www.pointfree.co/feed/episodes.xml"),
              .rel(.alternate),
              .type(.application(.init(rawValue: "atom/xml")))
            ]
          ),
          .link(
            [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/apple-touch-icon.png"),
              .rel(.init(rawValue: "apple-touch-icon")),
              .init("sizes", "180x180"),
            ]
          ),
          .link(
            [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-32x32.png"),
              .rel(.icon),
              .init("sizes", "32x32"),
              .type(.png)
            ]
          ),
          .link(
            [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-16x16.png"),
              .rel(.icon),
              .init("sizes", "16x16"),
              .type(.png)
            ]
          ),
          .link(
            [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/site.webmanifest"),
              .rel(.init(rawValue: "manifest"))
            ]
          ),
          .link(
            [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/safari-pinned-tab.svg"),
              .rel(.init(rawValue: "mask-icon"))
            ]
          ),
          .meta(
            description: """
            Subscribe to an individual or team membership on Point-Free, a video series exploring Swift and Functional Programming
            """
          ),
          .script([.async(true), .src("https://www.google-analytics.com/analytics.js")])
        ),
        .body(
          .header(
            [.class("bg-purple150 d-pt4 d-pb4 m-pl2 m-pr2 m-pt2 m-pb2")],
            .nav(
              .div(
                [.class("col-m")],
                .a(
                  [.href("/")],
                  .img(base64: "ZnVuY3Rpb25z", type: .image(.svg), alt: "", [.class("hide-d")])
                )
              ),
              .div(
                [.class("col-m")],
                .div(
                  [.class("center-m")],
                  .div(
                    [.class("hide-m")],
                    .a(
                      [.href("/")],
                      .img(base64: "ZnVuY3Rpb25z", type: .image(.svg), alt: "", [.class("hide-m")])
                    )
                  )
                )
              ),
              .div(
                [.class("col-m")],
                .ul(
                  [.class("list-reset end-m")],
                  .li(
                    [.class("m-pl3 inline")],
                    .a([.href("/blog")], "Blog")
                  ),
                  .li(
                    [.class("m-pl3 inline")],
                    .a([.href("/pricing")], "Subscribe")
                  ),
                  .li(
                    [.class("m-pl3 inline")],
                    .a([.href("/account")], "Account")
                  )
                )
              )
            )
          ),
//          .main(
//            [.class("bg-purple150 center-m d-pl0 d-pr0 d-pt4 d-pb4 m-pl2 m-pr2 m-pt3 m-pb3 row")],
//            .div(
//              [.class("col-m col-d-7 col-m-12")],
//              .div(
//                .h2(
//                  [.class("fg-white fg-black bold ts-d-r3 ts-m-r2 lh-2")],
//                  "Subscribe to Point-Free"
//                ),
//                .p(
//                  [.class("fg-green")],
//                  "Become a subscriber to unlock every full episode and explore new functional programming concepts as episodes are released."
//                ),
//                .div(
//                  [.class("m-pb3 m-mt4 row")],
//                  .div(
//                    [.class("col-m col-m-12")],
//                    .form(
//                      [
//                        .action("/subscribe"),
//                        .id("card-form"),
//                        .method(.post),
//                        .onsubmit("event.preventDefault()")
//                      ],
//                      .input(
//                        [
//                          .checked(true),
//                          .class("none"),
//                          .id("tab0"),
//                          .name("pricing[lane]"),
//                          .type(.radio),
//                          .value("individual"),
//                          .role(.button)
//                        ]
//                      ),
//                      .label(
//                        [
//                          .for("tab0"),
//                          .class("fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"),
//                          .style("-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);width:35%")
//                        ],
//                        "For you"
//                      ),
//                      .span(
//                        [.class("m-pl2 m-pr2 fg-gray850")],
//                        "or"
//                      ),
//                      .label(
//                        [
//                          .for("tab1"),
//                          .class("fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"),
//                          .style("-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);width:35%")
//                        ],
//                        "For your team"
//                      ),
//                      .div([.class("m-mb3")]),
//                      .div(
//                        [.class("flex")],
//                        .div(
//                          [.class("content1 bg-white w-100p row")],
//                          .div(
//                            [.class("col-m col-m-12")],
//                            .div(
//                              [.class("m-pl3 m-pr3 m-pt3")],
//                              .p(
//                                [.class("fg-black fg-black normal h5 lh-4")],
//                                "How many in your team?"
//                              ),
//                              .input(
//                                [
//                                  .class("num-spinner center fg-black bold ts-d-r4 ts-m-r3 lh-2 fg-black"),
//                                  .max(100),
//                                  .min(2),
//                                  .name("pricing[quantity]"),
//                                  .onblur("/* */"),
//                                  .oninput("/* */"),
//                                  .step(1),
//                                  .type(.number),
//                                  .value(2)
//                                ]
//                              ),
//                              .hr([.class("pf-divider border-top m-ml0 m-mr0 m-mt0 m-mb0 bg-white m-mt3")])
//                            )
//                          )
//                        )
//                      ),
//                      .div(
//                        [.class("bg-white row")],
//                        .div(
//                          [.class("bg-white col-m col-m-6")],
//                          .label(
//                            [
//                              .for("monthly"),
//                              .class("block m-ml3 m-mr3 m-mt3 m-mb3")
//                            ],
//                            .div(
//                              [.style("flex-direction:column-reverse"), .class("row")],
//                              .input(
//                                [
//                                  .checked(true),
//                                  .id("monthly"),
//                                  .name("pricing[billing]"),
//                                  .type(.radio),
//                                  .value("monthly")
//                                ]
//                              ),
//                              .div(
//                                [.class("col-m col-m-12")],
//                                .h2(
//                                  [.class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")],
//                                  .span([.class("content0")], "$17/mo"),
//                                  .span(
//                                    [.class("content1")],
//                                    "$",
//                                    .span(
//                                      [
//                                        .class("team-price"),
//                                        .data("price", "16"),
//                                      ],
//                                      "32"
//                                    ),
//                                    "/mo"
//                                  )
//                                )
//                              ),
//                              .div(
//                                [.class("col-m col-m-12")],
//                                .h6(
//                                  [.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline")],
//                                  "Monthly Plan"
//                                )
//                              )
//                            )
//                          )
//                        ),
//                        .div(
//                          [.class("bg-white col-m col-m-6")],
//                          .label(
//                            [
//                              .for("yearly"),
//                              .class("block m-ml3 m-mr3 m-mt3 m-mb3")
//                            ],
//                            .div(
//                              [.style("flex-direction:column-reverse"), .class("row")],
//                              .input(
//                                [
//                                  .checked(true),
//                                  .id("yearly"),
//                                  .name("pricing[billing]"),
//                                  .type(.radio),
//                                  .value("yearly")
//                                ]
//                              ),
//                              .div(
//                                [.class("col-m col-m-12")],
//                                .h2(
//                                  [.class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")],
//                                  .span([.class("content0")], "$170/yr"),
//                                  .span(
//                                    [.class("content1")],
//                                    "$",
//                                    .span(
//                                      [
//                                        .class("team-price"),
//                                        .data("price", "160"),
//                                        ],
//                                      "320"
//                                    ),
//                                    "/yr"
//                                  )
//                                )
//                              ),
//                              .div(
//                                [.class("col-m col-m-12")],
//                                .h6(
//                                  [.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline")],
//                                  "Yearly Plan"
//                                )
//                              )
//                            )
//                          )
//                        ),
//                        .div(
//                          [.class("bg-white col-m col-m-12")],
//                          .p(
//                            [.class("content1 m-pb1 fg-gray400 fg-black normal h6 lh-4 w-100p center normal")],
//                            "20% off the Individual Monthly plan"
//                          )
//                        )
//                      ),
//                      .div(
//                        [.class("bg-white row")],
//                        .div(
//                          [.class("col-m col-m-12")],
//                          .div(
//                            [.class("m-pb3 m-pt2")],
//                            .div(
//                              [.class("m-pl3 m-pr3")],
//                              .input(
//                                [
//                                  .name("token"),
//                                  .type(.hidden)
//                                ]
//                              ),
//                              .button(
//                                [.class("medium cursor-pointer nowrap btn-normal rounded border-none text-decoration-none pf-link-white fg-white bg-purple h5 m-pl2 m-pr2 m-mt3")],
//                                "Subscribe to Point-Free"
//                              )
//                            )
//                          )
//                        )
//                      )
//                    )
//                  )
//                )
//              )
//            )
//          ),
          .footer(
            [.class("row d-pl4 d-pr4 d-pt4 d-pb4 m-pl3 m-pr3 m-pt3 m-pb3 bg-black")],
            .div(
              [.class("col-m col-d-6 col-m-12")],
              .div(
                [.class("d-pr4 m-pb2")],
                .h4(
                  [.class("fg-black bold ts-d-r1_5 ts-m-r1_25 lh-2 m-mb0")],
                  .a([.href("/"), .class("pf-link-white")], "Point-Free")
                ),
                .p(
                  [.class("fg-black normal h5 lh-4 fg-white")],
                  "A video series on functional programming and the Swift programming language. Hosted by ",
                  .a(
                    [
                      .class("text-decoration-none pf-link-green"),
                      .href("https://twitter.com/mbrandonw")
                    ],
                    "Brandon Williams"
                  ),
                  " and ",
                  .a(
                    [
                      .class("text-decoration-none pf-link-green"),
                      .href("https://twitter.com/stephencelis")
                    ],
                    "Stephen Celis"
                  ),
                  "."
                )
              )
            ),
            .div(
              [.class("col-m col-d-2 col-m-4")],
              .div(
                .h5(
                  [.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")],
                  "Content",
                  .ol(
                    [.class("list-reset")],
                    .li(
                      .a([.href("/"), .class("pf-link-purple fg-black normal h5 lh-4")], "Videos")
                    ),
                    .li(
                      .a([.href("/blog"), .class("pf-link-purple fg-black normal h5 lh-4")], "Blog")
                    ),
                    .li(
                      .a([.href("/about"), .class("pf-link-purple fg-black normal h5 lh-4")], "About Us")
                    )
                  )
                )
              )
            ),
            .div(
              [.class("col-m col-d-2 col-m-4")],
              .div(
                .h5(
                  [.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")],
                  "More",
                  .ol(
                    [.class("list-reset")],
                    .li(
                      .a([.href("https://twitter.com/pointfreeco"), .class("pf-link-purple fg-black normal h5 lh-4")], "Twitter")
                    ),
                    .li(
                      .a([.href("https://github/pointfreeco"), .class("pf-link-purple fg-black normal h5 lh-4")], "GitHub")
                    ),
                    .li(
                      .a([.mailto("support@pointfree.co"), .class("pf-link-purple fg-black normal h5 lh-4")], "Contact Us")
                    ),
                    .li(
                      .a([.href("/privacy"), .class("pf-link-purple fg-black normal h5 lh-4")], "Privacy Policy")
                    )
                  )
                )
              )
            ),
            .div(
              [.class("col-m col-d-6 col-m-12")],
              .p(
                [.class("fg-gray400 fg-black normal h6 lh-4 m-pt2")],
                "© 2019 Point-Free, Inc. All rights are reserved for the videos and transcripts on this site. All other content is licensed under ",
                .a([.class("pf-link-gray650"), .href("https://creativecommons.org/licenses/by-nc-sa/4.0/")], "CC BY-NC-SA 4.0"),
                ", and the underlying ",
                .a([.class("pf-link-gray650"), .href("https://github/pointfreeco")], "source code"),
                " to run this site is licensed under the ",
                .a([.class("pf-link-gray650"), .href("https://github.com/pointfreeco/pointfreeco/blob/master/LICENSE")], "MIT license")
              )
            )
          )
        )
      )
    )

    assertSnapshot(matching: doc, as: .html)
  }

//  func testSnapshots() {
//    let doc = [
//      a(["foo1"]),
//      abbr([]),
//      abbr([], []),
//      address([]),
//      address([], []),
//      map(name: "foo2", [
//        area([])
//        ]),
//      article([]),
//      article([], []),
//      aside([]),
//      aside([], []),
//      audio([]),
//      audio([], []),
//      audio([], [track(src: "track1")], ["Fallback"]),
//      b([]),
//      b([], []),
//      bdi([]),
//      bdi([], []),
//      bdo(dir: .ltr, []),
//      bdo(dir: .ltr, [], []),
//      blockquote([]),
//      button([]),
//      canvas([]),
//      canvas([], []),
//      cite([]),
//      cite([], []),
//      code([]),
//      code([], []),
//      del([]),
//      del([], []),
//      details([
//// todo: `summary` returns ChildOf<FieldSet> but `details` only wants Node. is that correct?
////        summary([]),
////        summary([], []),
//]),
//      dfn([]),
//      dfn([], []),
//      div([]),
//      dl([
//        dd([]),
//        dd([], []),
//        dt([]),
//        dt([], [])
//        ]),
//      dl([], []),
//      em([]),
//      em([], []),
//      embed([]),
//      fieldset([
//// todo: `legend` returns ChildOf<FieldSet> but `fieldset` only wants Node. is that correct?
////        legend([]),
////        legend([], []),
//]),
//      fieldset([], []),
//      figure([
//        figcaption([]),
//        figcaption([], [])
//        ]),
//      figure([], []),
//      footer([]),
//      footer([], []),
//      form([]),
//      h1([]),
//      h1([], []),
//      h2([]),
//      h2([], []),
//      h3([]),
//      h3([], []),
//      h4([]),
//      h4([], []),
//      h5([]),
//      h5([], []),
//      h6([]),
//      h6([], []),
//      header([]),
//      header([], []),
//      hr([]),
//      html([
//        head([
//          base([]),
//          meta(contentType: .html),
//          meta(defaultStyle: "foo"),
//          meta(refresh: 1),
//          meta(applicationName: "foo"),
//          meta(author: "Blob"),
//          meta(description: "Functional programming."),
//          meta(generator: "foo"),
//          meta(keywords: ["math"]),
//          meta(name: "foo", content: "bar"),
//          meta(property: "foo", content: "bar"),
//          meta(viewport: Viewport.height(.deviceHeight)),
//          // todo: more of these ^
//          script(""),
//          script([]),
//          script([], ""),
//          style(""),
//          style([], ""),
//          ]),
//        body([])
//        ]),
//      i([]),
//      i([], []),
//      img(base64: "deadbeef", type: .image(.svg), alt: "", []),
//      ins([]),
//      ins([], []),
//      kbd([]),
//      kbd([], []),
//      label([]),
//      label([], []),
//      main([]),
//      main([], []),
//      mark([]),
//      mark([], []),
//      meter(value: 1, []),
//      meter(value: 2, [], []),
//      nav([]),
//      nav([], []),
//      object([], [param(name: "foo", value: "bar")]),
//      ol([
//        li([]),
//        li([], []),
//        ]),
//      ol([], []),
//      optgroup([
//        option("foo"),
//        option([], "foo"),
//        ]),
//      optgroup([], []),
//      output([]),
//      output([], []),
//      p([]),
//      p([], []),
//      pre([]),
//      pre([], []),
//      q([]),
//      q([], []),
//      s([]),
//      s([], []),
//      samp([]),
//      samp([], []),
//      script(""),
//      script([]),
//      script([], ""),
//      section([]),
//      section([], []),
//      select([]),
//      select([], []),
//      small([]),
//      small([], []),
//      span([]),
//      span([], []),
//      strong([]),
//      strong([], []),
//      sub([]),
//      sub([], []),
//      sup([]),
//      sup([], []),
//      svg(""),
//      svg([], ""),
//      table([
//        caption([]),
//        caption([], []),
//        colgroup([
//          col([])
//          ]),
//        colgroup([], []),
//        tbody([]),
//        tbody([], []),
//        tfoot([]),
//        tfoot([], []),
//        thead([]),
//        thead([], []),
//        tr([
//          th([]),
//          th([], []),
//          td([]),
//          td([], [])
//          ]),
//        tr([], [])
//        ]),
//      textarea(""),
//      time([]),
//      u([]),
//      u([], []),
//      ul([
//        li([]),
//        li([], []),
//        ]),
//      ul([], []),
//      `var`([]),
//      `var`([], []),
//      video([], []),
//      ]
//
//    assertSnapshot(matching: doc, as: .html)
//  }
}
