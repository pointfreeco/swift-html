import Html
import HtmlSnapshotTesting
import SnapshotTesting
import XCTest

#if !os(Linux)
typealias SnapshotTestCase = XCTestCase
#endif

final class SnapshotTestingTests: SnapshotTestCase {
  func testComplexHtml() {
    let doc = document(
      html(
        [lang(.en)],
        head(
          meta([charset(.utf8)]),
          title("Subscribe to Point-Free"),
          style("html{line-height:1.15;-webkit-text-size-adjust:100%}"),
          meta(viewport: .width(.deviceWidth), .initialScale(1)),
          link(
            [
              href("https://www.pointfree.co/feed/episodes.xml"),
              rel(.alternate),
              type(.application(.init(rawValue: "atom/xml")))
            ]
          ),
          link(
            [
              href("https://d3rccdn33rt8ze.cloudfront.net/favicons/apple-touch-icon.png"),
              rel(.init(rawValue: "apple-touch-icon")),
              .init("sizes", "180x180"),
            ]
          ),
          link(
            [
              href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-32x32.png"),
              rel(.icon),
              .init("sizes", "32x32"),
              type(.png)
            ]
          ),
          link(
            [
              href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-16x16.png"),
              rel(.icon),
              .init("sizes", "16x16"),
              type(.png)
            ]
          ),
          link(
            [
              href("https://d3rccdn33rt8ze.cloudfront.net/favicons/site.webmanifest"),
              rel(.init(rawValue: "manifest"))
            ]
          ),
          link(
            [
              href("https://d3rccdn33rt8ze.cloudfront.net/favicons/safari-pinned-tab.svg"),
              rel(.init(rawValue: "mask-icon"))
            ]
          ),
          meta(
            description: """
            Subscribe to an individual or team membership on Point-Free, a video series exploring Swift and Functional Programming
            """
          ),
          script([async(true), src("https://www.google-analytics.com/analytics.js")])
        ),
        body(
          header(
            [Html.class("bg-purple150 d-pt4 d-pb4 m-pl2 m-pr2 m-pt2 m-pb2")],
            nav(
              div(
                [Html.class("col-m")],
                a(
                  [href("/")],
                  img(base64: "ZnVuY3Rpb25z", type: .image(.svg), alt: "", [Html.class("hide-d")])
                )
              ),
              div(
                [Html.class("col-m")],
                div(
                  [Html.class("center-m")],
                  div(
                    [Html.class("hide-m")],
                    a(
                      [href("/")],
                      img(base64: "ZnVuY3Rpb25z", type: .image(.svg), alt: "", [Html.class("hide-m")])
                    )
                  )
                )
              ),
              div(
                [Html.class("col-m")],
                ul(
                  [Html.class("list-reset end-m")],
                  li(
                    [Html.class("m-pl3 inline")],
                    a([href("/blog")], "Blog")
                  ),
                  li(
                    [Html.class("m-pl3 inline")],
                    a([href("/pricing")], "Subscribe")
                  ),
                  li(
                    [Html.class("m-pl3 inline")],
                    a([href("/account")], "Account")
                  )
                )
              )
            )
          ),
          main(
            [Html.class("bg-purple150 center-m d-pl0 d-pr0 d-pt4 d-pb4 m-pl2 m-pr2 m-pt3 m-pb3 row")],
            div(
              [Html.class("col-m col-d-7 col-m-12")],
              div(
                h2(
                  [Html.class("fg-white fg-black bold ts-d-r3 ts-m-r2 lh-2")],
                  "Subscribe to Point-Free"
                ),
                p(
                  [Html.class("fg-green")],
                  "Become a subscriber to unlock every full episode and explore new functional programming concepts as episodes are released."
                ),
                div(
                  [Html.class("m-pb3 m-mt4 row")],
                  div(
                    [Html.class("col-m col-m-12")],
                    form(
                      [
                        action("/subscribe"),
                        id("card-form"),
                        Html.method(.post),
                        onsubmit("event.preventDefault()")
                      ],
                      input(
                        [
                          checked(true),
                          Html.class("none"),
                          id("tab0"),
                          Html.name("pricing[lane]"),
                          type(.radio),
                          Html.value("individual"),
                          role(.button)
                        ]
                      ),
                      label(
                        [
                          Html.for("tab0"),
                          Html.class("fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"),
                          style("-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);width:35%")
                        ],
                        "For you"
                      ),
                      span(
                        [Html.class("m-pl2 m-pr2 fg-gray850")],
                        "or"
                      ),
                      label(
                        [
                          Html.for("tab1"),
                          Html.class("fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"),
                          style("-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);width:35%")
                        ],
                        "For your team"
                      ),
                      div([Html.class("m-mb3")]),
                      div(
                        [Html.class("flex")],
                        div(
                          [Html.class("content1 bg-white w-100p row")],
                          div(
                            [Html.class("col-m col-m-12")],
                            div(
                              [Html.class("m-pl3 m-pr3 m-pt3")],
                              p(
                                [Html.class("fg-black fg-black normal h5 lh-4")],
                                "How many in your team?"
                              ),
                              input(
                                [
                                  Html.class("num-spinner center fg-black bold ts-d-r4 ts-m-r3 lh-2 fg-black"),
                                  max(100),
                                  min(2),
                                  Html.name("pricing[quantity]"),
                                  onblur("/* */"),
                                  oninput("/* */"),
                                  step(1),
                                  type(.number),
                                  Html.value(2)
                                ]
                              ),
                              hr([Html.class("pf-divider border-top m-ml0 m-mr0 m-mt0 m-mb0 bg-white m-mt3")])
                            )
                          )
                        )
                      ),
                      div(
                        [Html.class("bg-white row")],
                        div(
                          [Html.class("bg-white col-m col-m-6")],
                          label(
                            [
                              Html.for("monthly"),
                              Html.class("block m-ml3 m-mr3 m-mt3 m-mb3")
                            ],
                            div(
                              [style("flex-direction:column-reverse"), Html.class("row")],
                              input(
                                [
                                  checked(true),
                                  id("monthly"),
                                  Html.name("pricing[billing]"),
                                  type(.radio),
                                  Html.value("monthly")
                                ]
                              ),
                              div(
                                [Html.class("col-m col-m-12")],
                                h2(
                                  [Html.class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")],
                                  span([Html.class("content0")], "$17/mo"),
                                  span(
                                    [Html.class("content1")],
                                    "$",
                                    span(
                                      [
                                        Html.class("team-price"),
                                        data("price", "16"),
                                      ],
                                      "32"
                                    ),
                                    "/mo"
                                  )
                                )
                              ),
                              div(
                                [Html.class("col-m col-m-12")],
                                h6(
                                  [Html.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline")],
                                  "Monthly Plan"
                                )
                              )
                            )
                          )
                        ),
                        div(
                          [Html.class("bg-white col-m col-m-6")],
                          label(
                            [
                              Html.for("yearly"),
                              Html.class("block m-ml3 m-mr3 m-mt3 m-mb3")
                            ],
                            div(
                              [style("flex-direction:column-reverse"), Html.class("row")],
                              input(
                                [
                                  checked(true),
                                  id("yearly"),
                                  Html.name("pricing[billing]"),
                                  type(.radio),
                                  Html.value("yearly")
                                ]
                              ),
                              div(
                                [Html.class("col-m col-m-12")],
                                h2(
                                  [Html.class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")],
                                  span([Html.class("content0")], "$170/yr"),
                                  span(
                                    [Html.class("content1")],
                                    "$",
                                    span(
                                      [
                                        Html.class("team-price"),
                                        data("price", "160"),
                                        ],
                                      "320"
                                    ),
                                    "/yr"
                                  )
                                )
                              ),
                              div(
                                [Html.class("col-m col-m-12")],
                                h6(
                                  [Html.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline")],
                                  "Yearly Plan"
                                )
                              )
                            )
                          )
                        ),
                        div(
                          [Html.class("bg-white col-m col-m-12")],
                          p(
                            [Html.class("content1 m-pb1 fg-gray400 fg-black normal h6 lh-4 w-100p center normal")],
                            "20% off the Individual Monthly plan"
                          )
                        )
                      ),
                      div(
                        [Html.class("bg-white row")],
                        div(
                          [Html.class("col-m col-m-12")],
                          div(
                            [Html.class("m-pb3 m-pt2")],
                            div(
                              [Html.class("m-pl3 m-pr3")],
                              input(
                                [
                                  Html.name("token"),
                                  type(.hidden)
                                ]
                              ),
                              button(
                                [Html.class("medium cursor-pointer nowrap btn-normal rounded border-none text-decoration-none pf-link-white fg-white bg-purple h5 m-pl2 m-pr2 m-mt3")],
                                "Subscribe to Point-Free"
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          ),
          footer(
            [Html.class("row d-pl4 d-pr4 d-pt4 d-pb4 m-pl3 m-pr3 m-pt3 m-pb3 bg-black")],
            div(
              [Html.class("col-m col-d-6 col-m-12")],
              div(
                [Html.class("d-pr4 m-pb2")],
                h4(
                  [Html.class("fg-black bold ts-d-r1_5 ts-m-r1_25 lh-2 m-mb0")],
                  a([href("/"), Html.class("pf-link-white")], "Point-Free")
                ),
                p(
                  [Html.class("fg-black normal h5 lh-4 fg-white")],
                  "A video series on functional programming and the Swift programming language. Hosted by ",
                  a(
                    [
                      Html.class("text-decoration-none pf-link-green"),
                      href("https://twitter.com/mbrandonw")
                    ],
                    "Brandon Williams"
                  ),
                  " and ",
                  a(
                    [
                      Html.class("text-decoration-none pf-link-green"),
                      href("https://twitter.com/stephencelis")
                    ],
                    "Stephen Celis"
                  ),
                  "."
                )
              )
            ),
            div(
              [Html.class("col-m col-d-2 col-m-4")],
              div(
                h5(
                  [Html.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")],
                  "Content",
                  ol(
                    [Html.class("list-reset")],
                    li(
                      a([href("/"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "Videos")
                    ),
                    li(
                      a([href("/blog"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "Blog")
                    ),
                    li(
                      a([href("/about"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "About Us")
                    )
                  )
                )
              )
            ),
            div(
              [Html.class("col-m col-d-2 col-m-4")],
              div(
                h5(
                  [Html.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")],
                  "More",
                  ol(
                    [Html.class("list-reset")],
                    li(
                      a([href("https://twitter.com/pointfreeco"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "Twitter")
                    ),
                    li(
                      a([href("https://github/pointfreeco"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "GitHub")
                    ),
                    li(
                      a([mailto("support@pointfree.co"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "Contact Us")
                    ),
                    li(
                      a([href("/privacy"), Html.class("pf-link-purple fg-black normal h5 lh-4")], "Privacy Policy")
                    )
                  )
                )
              )
            ),
            div(
              [Html.class("col-m col-d-6 col-m-12")],
              p(
                [Html.class("fg-gray400 fg-black normal h6 lh-4 m-pt2")],
                "© 2019 Point-Free, Inc. All rights are reserved for the videos and transcripts on this site. All other content is licensed under ",
                a([Html.class("pf-link-gray650"), href("https://creativecommons.org/licenses/by-nc-sa/4.0/")], "CC BY-NC-SA 4.0"),
                ", and the underlying ",
                a([Html.class("pf-link-gray650"), href("https://github/pointfreeco")], "source code"),
                " to run this site is licensed under the ",
                a([Html.class("pf-link-gray650"), href("https://github.com/pointfreeco/pointfreeco/blob/master/LICENSE")], "MIT license")
              )
            )
          )
        )
      )
    )

    assertSnapshot(matching: doc, as: .html)
  }

  func testSnapshots() {
    let doc = [
      a(["foo1"]),
      abbr([]),
      abbr([], []),
      address([]),
      address([], []),
      map(name: "foo2", [
        area([])
        ]),
      article([]),
      article([], []),
      aside([]),
      aside([], []),
      audio([]),
      audio([], []),
      audio([], [track(src: "track1")], ["Fallback"]),
      b([]),
      b([], []),
      bdi([]),
      bdi([], []),
      bdo(dir: .ltr, []),
      bdo(dir: .ltr, [], []),
      blockquote([]),
      button([]),
      canvas([]),
      canvas([], []),
      cite([]),
      cite([], []),
      code([]),
      code([], []),
      del([]),
      del([], []),
      details([
// todo: `summary` returns ChildOf<FieldSet> but `details` only wants Node. is that correct?
//        summary([]),
//        summary([], []),
]),
      dfn([]),
      dfn([], []),
      div([]),
      dl([
        dd([]),
        dd([], []),
        dt([]),
        dt([], [])
        ]),
      dl([], []),
      em([]),
      em([], []),
      embed([]),
      fieldset([
// todo: `legend` returns ChildOf<FieldSet> but `fieldset` only wants Node. is that correct?
//        legend([]),
//        legend([], []),
]),
      fieldset([], []),
      figure([
        figcaption([]),
        figcaption([], [])
        ]),
      figure([], []),
      footer([]),
      footer([], []),
      form([]),
      h1([]),
      h1([], []),
      h2([]),
      h2([], []),
      h3([]),
      h3([], []),
      h4([]),
      h4([], []),
      h5([]),
      h5([], []),
      h6([]),
      h6([], []),
      header([]),
      header([], []),
      hr([]),
      html([
        head([
          base([]),
          meta(contentType: .html),
          meta(defaultStyle: "foo"),
          meta(refresh: 1),
          meta(applicationName: "foo"),
          meta(author: "Blob"),
          meta(description: "Functional programming."),
          meta(generator: "foo"),
          meta(keywords: ["math"]),
          meta(name: "foo", content: "bar"),
          meta(property: "foo", content: "bar"),
          meta(viewport: Viewport.height(.deviceHeight)),
          // todo: more of these ^
          script(""),
          script([]),
          script([], ""),
          style(""),
          style([], ""),
          ]),
        body([])
        ]),
      i([]),
      i([], []),
      img(base64: "deadbeef", type: .image(.svg), alt: "", []),
      ins([]),
      ins([], []),
      kbd([]),
      kbd([], []),
      label([]),
      label([], []),
      main([]),
      main([], []),
      mark([]),
      mark([], []),
      meter(value: 1, []),
      meter(value: 2, [], []),
      nav([]),
      nav([], []),
      object([], [param(name: "foo", value: "bar")]),
      ol([
        li([]),
        li([], []),
        ]),
      ol([], []),
      optgroup([
        option("foo"),
        option([], "foo"),
        ]),
      optgroup([], []),
      output([]),
      output([], []),
      p([]),
      p([], []),
      pre([]),
      pre([], []),
      q([]),
      q([], []),
      s([]),
      s([], []),
      samp([]),
      samp([], []),
      script(""),
      script([]),
      script([], ""),
      section([]),
      section([], []),
      select([]),
      select([], []),
      small([]),
      small([], []),
      span([]),
      span([], []),
      strong([]),
      strong([], []),
      sub([]),
      sub([], []),
      sup([]),
      sup([], []),
      svg(""),
      svg([], ""),
      table([
        caption([]),
        caption([], []),
        colgroup([
          col([])
          ]),
        colgroup([], []),
        tbody([]),
        tbody([], []),
        tfoot([]),
        tfoot([], []),
        thead([]),
        thead([], []),
        tr([
          th([]),
          th([], []),
          td([]),
          td([], [])
          ]),
        tr([], [])
        ]),
      textarea(""),
      time([]),
      u([]),
      u([], []),
      ul([
        li([]),
        li([], []),
        ]),
      ul([], []),
      `var`([]),
      `var`([], []),
      video([], []),
      ]

    assertSnapshot(matching: doc, as: .html)
  }
}
