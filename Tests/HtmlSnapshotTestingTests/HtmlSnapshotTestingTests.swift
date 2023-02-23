import Html
import HtmlSnapshotTesting
import SnapshotTesting
import XCTest

final class SnapshotTestingTests: XCTestCase {
  func testComplexHtml() {
    let doc: Node = .document(
      .html(
        attributes: [.lang(.en)],
        .head(
          .meta(attributes: [.charset(.utf8)]),
          .title("Subscribe to Point-Free"),
          .style(safe: "html{line-height:1.15;-webkit-text-size-adjust:100%}"),
          .meta(viewport: .width(.deviceWidth), .initialScale(1)),
          .link(
            attributes: [
              .href("https://www.pointfree.co/feed/episodes.xml"),
              .rel(.alternate),
              .type(.application(.init(rawValue: "atom/xml"))),
            ]
          ),
          .link(
            attributes: [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/apple-touch-icon.png"),
              .rel(.init(rawValue: "apple-touch-icon")),
              .init("sizes", "180x180"),
            ]
          ),
          .link(
            attributes: [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-32x32.png"),
              .rel(.icon),
              .init("sizes", "32x32"),
              .type(.png),
            ]
          ),
          .link(
            attributes: [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/favicon-16x16.png"),
              .rel(.icon),
              .init("sizes", "16x16"),
              .type(.png),
            ]
          ),
          .link(
            attributes: [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/site.webmanifest"),
              .rel(.init(rawValue: "manifest")),
            ]
          ),
          .link(
            attributes: [
              .href("https://d3rccdn33rt8ze.cloudfront.net/favicons/safari-pinned-tab.svg"),
              .rel(.init(rawValue: "mask-icon")),
            ]
          ),
          .meta(
            description: """
              Subscribe to an individual or team membership on Point-Free, a video series exploring Swift and Functional Programming
              """
          ),
          .script(attributes: [.async(true), .src("https://www.google-analytics.com/analytics.js")])
        ),
        .body(
          .header(
            attributes: [.class("bg-purple150 d-pt4 d-pb4 m-pl2 m-pr2 m-pt2 m-pb2")],
            .nav(
              .div(
                attributes: [.class("col-m")],
                .a(
                  attributes: [.href("/")],
                  .img(
                    base64: "ZnVuY3Rpb25z", type: .image(.svg), alt: "",
                    attributes: [.class("hide-d")])
                )
              ),
              .div(
                attributes: [.class("col-m")],
                .div(
                  attributes: [.class("center-m")],
                  .div(
                    attributes: [.class("hide-m")],
                    .a(
                      attributes: [.href("/")],
                      .img(
                        base64: "ZnVuY3Rpb25z", type: .image(.svg), alt: "",
                        attributes: [.class("hide-m")])
                    )
                  )
                )
              ),
              .div(
                attributes: [.class("col-m")],
                .ul(
                  attributes: [.class("list-reset end-m")],
                  .li(
                    attributes: [.class("m-pl3 inline")],
                    .a(attributes: [.href("/blog")], "Blog")
                  ),
                  .li(
                    attributes: [.class("m-pl3 inline")],
                    .a(attributes: [.href("/pricing")], "Subscribe")
                  ),
                  .li(
                    attributes: [.class("m-pl3 inline")],
                    .a(attributes: [.href("/account")], "Account")
                  )
                )
              )
            )
          ),
          .main(
            attributes: [
              .class("bg-purple150 center-m d-pl0 d-pr0 d-pt4 d-pb4 m-pl2 m-pr2 m-pt3 m-pb3 row")
            ],
            .div(
              attributes: [.class("col-m col-d-7 col-m-12")],
              .div(
                .h2(
                  attributes: [.class("fg-white fg-black bold ts-d-r3 ts-m-r2 lh-2")],
                  "Subscribe to Point-Free"
                ),
                .p(
                  attributes: [.class("fg-green")],
                  "Become a subscriber to unlock every full episode and explore new functional programming concepts as episodes are released."
                ),
                .div(
                  attributes: [.class("m-pb3 m-mt4 row")],
                  .div(
                    attributes: [.class("col-m col-m-12")],
                    .form(
                      attributes: [
                        .action("/subscribe"),
                        .id("card-form"),
                        .method(.post),
                        .onsubmit(safe: "event.preventDefault()"),
                      ],
                      .input(
                        attributes: [
                          .checked(true),
                          .class("none"),
                          .id("tab0"),
                          .name("pricing[lane]"),
                          .type(.radio),
                          .value("individual"),
                          .role(.button),
                        ]
                      ),
                      .label(
                        attributes: [
                          .for("tab0"),
                          .class(
                            "fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"
                          ),
                          .style(
                            safe:
                              "-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);width:35%"
                          ),
                        ],
                        "For you"
                      ),
                      .span(
                        attributes: [.class("m-pl2 m-pr2 fg-gray850")],
                        "or"
                      ),
                      .label(
                        attributes: [
                          .for("tab1"),
                          .class(
                            "fit fg-black bold ts-d-r1_25 ts-m-r1 lh-1 medium m-pl2 m-pr2 m-pt2 m-pb2 border-none inline-block rounded cursor-pointer bg-purple fg-white"
                          ),
                          .style(
                            safe:
                              "-webkit-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-moz-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-ms-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);-o-box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);box-shadow:0px 0px 5px 5px rgba(0,0,0,0.1);width:35%"
                          ),
                        ],
                        "For your team"
                      ),
                      .div(attributes: [.class("m-mb3")]),
                      .div(
                        attributes: [.class("flex")],
                        .div(
                          attributes: [.class("content1 bg-white w-100p row")],
                          .div(
                            attributes: [.class("col-m col-m-12")],
                            .div(
                              attributes: [.class("m-pl3 m-pr3 m-pt3")],
                              .p(
                                attributes: [.class("fg-black fg-black normal h5 lh-4")],
                                "How many in your team?"
                              ),
                              .input(
                                attributes: [
                                  .class(
                                    "num-spinner center fg-black bold ts-d-r4 ts-m-r3 lh-2 fg-black"
                                  ),
                                  .max(100),
                                  .min(2),
                                  .name("pricing[quantity]"),
                                  .onblur(safe: "/* */"),
                                  .oninput(safe: "/* */"),
                                  .step(1),
                                  .type(.number),
                                  .value(2),
                                ]
                              ),
                              .hr(attributes: [
                                .class(
                                  "pf-divider border-top m-ml0 m-mr0 m-mt0 m-mb0 bg-white m-mt3")
                              ])
                            )
                          )
                        )
                      ),
                      .div(
                        attributes: [.class("bg-white row")],
                        .div(
                          attributes: [.class("bg-white col-m col-m-6")],
                          .label(
                            attributes: [
                              .for("monthly"),
                              .class("block m-ml3 m-mr3 m-mt3 m-mb3"),
                            ],
                            .div(
                              attributes: [
                                .style(safe: "flex-direction:column-reverse"), .class("row"),
                              ],
                              .input(
                                attributes: [
                                  .checked(true),
                                  .id("monthly"),
                                  .name("pricing[billing]"),
                                  .type(.radio),
                                  .value("monthly"),
                                ]
                              ),
                              .div(
                                attributes: [.class("col-m col-m-12")],
                                .h2(
                                  attributes: [
                                    .class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")
                                  ],
                                  .span(attributes: [.class("content0")], "$17/mo"),
                                  .span(
                                    attributes: [.class("content1")],
                                    "$",
                                    .span(
                                      attributes: [
                                        .class("team-price"),
                                        .data("price", "16"),
                                      ],
                                      "32"
                                    ),
                                    "/mo"
                                  )
                                )
                              ),
                              .div(
                                attributes: [.class("col-m col-m-12")],
                                .h6(
                                  attributes: [
                                    .class(
                                      "fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline"
                                    )
                                  ],
                                  "Monthly Plan"
                                )
                              )
                            )
                          )
                        ),
                        .div(
                          attributes: [.class("bg-white col-m col-m-6")],
                          .label(
                            attributes: [
                              .for("yearly"),
                              .class("block m-ml3 m-mr3 m-mt3 m-mb3"),
                            ],
                            .div(
                              attributes: [
                                .style(safe: "flex-direction:column-reverse"), .class("row"),
                              ],
                              .input(
                                attributes: [
                                  .checked(true),
                                  .id("yearly"),
                                  .name("pricing[billing]"),
                                  .type(.radio),
                                  .value("yearly"),
                                ]
                              ),
                              .div(
                                attributes: [.class("col-m col-m-12")],
                                .h2(
                                  attributes: [
                                    .class("fg-black bold ts-d-r3 ts-m-r2 lh-2 light fg-gray650")
                                  ],
                                  .span(attributes: [.class("content0")], "$170/yr"),
                                  .span(
                                    attributes: [.class("content1")],
                                    "$",
                                    .span(
                                      attributes: [
                                        .class("team-price"),
                                        .data("price", "160"),
                                      ],
                                      "320"
                                    ),
                                    "/yr"
                                  )
                                )
                              ),
                              .div(
                                attributes: [.class("col-m col-m-12")],
                                .h6(
                                  attributes: [
                                    .class(
                                      "fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-gray650 inline"
                                    )
                                  ],
                                  "Yearly Plan"
                                )
                              )
                            )
                          )
                        ),
                        .div(
                          attributes: [.class("bg-white col-m col-m-12")],
                          .p(
                            attributes: [
                              .class(
                                "content1 m-pb1 fg-gray400 fg-black normal h6 lh-4 w-100p center normal"
                              )
                            ],
                            "20% off the Individual Monthly plan"
                          )
                        )
                      ),
                      .div(
                        attributes: [.class("bg-white row")],
                        .div(
                          attributes: [.class("col-m col-m-12")],
                          .div(
                            attributes: [.class("m-pb3 m-pt2")],
                            .div(
                              attributes: [.class("m-pl3 m-pr3")],
                              .input(
                                attributes: [
                                  .name("token"),
                                  .type(.hidden),
                                ]
                              ),
                              .button(
                                attributes: [
                                  .class(
                                    "medium cursor-pointer nowrap btn-normal rounded border-none text-decoration-none pf-link-white fg-white bg-purple h5 m-pl2 m-pr2 m-mt3"
                                  )
                                ],
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
          .footer(
            attributes: [.class("row d-pl4 d-pr4 d-pt4 d-pb4 m-pl3 m-pr3 m-pt3 m-pb3 bg-black")],
            .div(
              attributes: [.class("col-m col-d-6 col-m-12")],
              .div(
                attributes: [.class("d-pr4 m-pb2")],
                .h4(
                  attributes: [.class("fg-black bold ts-d-r1_5 ts-m-r1_25 lh-2 m-mb0")],
                  .a(attributes: [.href("/"), .class("pf-link-white")], "Point-Free")
                ),
                .p(
                  attributes: [.class("fg-black normal h5 lh-4 fg-white")],
                  "A video series on functional programming and the Swift programming language. Hosted by ",
                  .a(
                    attributes: [
                      .class("text-decoration-none pf-link-green"),
                      .href("https://twitter.com/mbrandonw"),
                    ],
                    "Brandon Williams"
                  ),
                  " and ",
                  .a(
                    attributes: [
                      .class("text-decoration-none pf-link-green"),
                      .href("https://twitter.com/stephencelis"),
                    ],
                    "Stephen Celis"
                  ),
                  "."
                )
              )
            ),
            .div(
              attributes: [.class("col-m col-d-2 col-m-4")],
              .div(
                .h5(
                  attributes: [.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")],
                  "Content",
                  .ol(
                    attributes: [.class("list-reset")],
                    .li(
                      .a(
                        attributes: [.href("/"), .class("pf-link-purple fg-black normal h5 lh-4")],
                        "Videos")
                    ),
                    .li(
                      .a(
                        attributes: [
                          .href("/blog"), .class("pf-link-purple fg-black normal h5 lh-4"),
                        ], "Blog")
                    ),
                    .li(
                      .a(
                        attributes: [
                          .href("/about"), .class("pf-link-purple fg-black normal h5 lh-4"),
                        ], "About Us")
                    )
                  )
                )
              )
            ),
            .div(
              attributes: [.class("col-m col-d-2 col-m-4")],
              .div(
                .h5(
                  attributes: [.class("fg-black bold ts-d-r0_875 ts-m-r0_75 lh-1 caps fg-white")],
                  "More",
                  .ol(
                    attributes: [.class("list-reset")],
                    .li(
                      .a(
                        attributes: [
                          .href("https://twitter.com/pointfreeco"),
                          .class("pf-link-purple fg-black normal h5 lh-4"),
                        ], "Twitter")
                    ),
                    .li(
                      .a(
                        attributes: [
                          .href("https://github/pointfreeco"),
                          .class("pf-link-purple fg-black normal h5 lh-4"),
                        ], "GitHub")
                    ),
                    .li(
                      .a(
                        attributes: [
                          .mailto("support@pointfree.co"),
                          .class("pf-link-purple fg-black normal h5 lh-4"),
                        ], "Contact Us")
                    ),
                    .li(
                      .a(
                        attributes: [
                          .href("/privacy"), .class("pf-link-purple fg-black normal h5 lh-4"),
                        ], "Privacy Policy")
                    )
                  )
                )
              )
            ),
            .div(
              attributes: [.class("col-m col-d-6 col-m-12")],
              .p(
                attributes: [.class("fg-gray400 fg-black normal h6 lh-4 m-pt2")],
                "© 2019 Point-Free, Inc. All rights are reserved for the videos and transcripts on this site. All other content is licensed under ",
                .a(
                  attributes: [
                    .class("pf-link-gray650"),
                    .href("https://creativecommons.org/licenses/by-nc-sa/4.0/"),
                  ], "CC BY-NC-SA 4.0"),
                ", and the underlying ",
                .a(
                  attributes: [.class("pf-link-gray650"), .href("https://github/pointfreeco")],
                  "source code"),
                " to run this site is licensed under the ",
                .a(
                  attributes: [
                    .class("pf-link-gray650"),
                    .href("https://github.com/pointfreeco/pointfreeco/blob/master/LICENSE"),
                  ], "MIT license")
              )
            )
          )
        )
      )
    )

    assertSnapshot(matching: doc, as: .html)
  }

  func testSnapshots() {
    let doc: Node = [
      .a(),
      .abbr(),
      .address(),
      .map(name: "foo2", .area(attributes: [])),
      .article(),
      .aside(),
      .audio(),
      .audio(.track(src: "track1"), transparent: "Fallback"),
      .b(),
      .bdi(),
      .bdo(dir: .ltr),
      .blockquote(),
      .button(),
      .canvas(),
      .cite(),
      .code(),
      .del(),
      .details(),
      .details(
        .summary()
      ),
      .details(
        .summary(),
        .div()
      ),
      .details(
        .div()
      ),
      .dfn(),
      .div(),
      .dl(
        .dd(),
        .dt()
      ),
      .em(),
      .embed(),
      .fieldset(),
      .fieldset(
        .legend()
      ),
      .fieldset(
        .legend(),
        .div()
      ),
      .fieldset(
        .div()
      ),
      .figure(
        .figcaption()
      ),
      .footer(),
      .form(),
      .h1(),
      .h2(),
      .h3(),
      .h4(),
      .h5(),
      .h6(),
      .header(),
      .hr,
      .html(
        .head(
          .base(),
          .meta(contentType: .html),
          .meta(defaultStyle: "foo"),
          .meta(refresh: 1),
          .meta(applicationName: "foo"),
          .meta(author: "Blob"),
          .meta(description: "Functional programming."),
          .meta(generator: "foo"),
          .meta(keywords: ["math"]),
          .meta(name: "foo", content: "bar"),
          .meta(property: "foo", content: "bar"),
          .meta(viewport: .height(.deviceHeight)),
          // TODO: more of these ^
          .script(attributes: []),
          .script(safe: ""),
          .script(unsafe: ""),
          .style(safe: ""),
          .style(unsafe: "")
        ),
        .body()
      ),
      .i(),
      .img(base64: "deadbeef", type: .image(.svg), alt: ""),
      .ins(),
      .kbd(),
      .label(),
      .main(),
      .mark(),
      .meter(value: 1),
      .nav(),
      .object(.param(name: "foo", value: "bar")),
      .ol(
        .li()
      ),
      .optgroup(
        .option("foo")
      ),
      .output(),
      .p(),
      .pre(),
      .q(),
      .s(),
      .samp(),
      .script(attributes: []),
      .script(safe: ""),
      .script(unsafe: ""),
      .section(),
      .select(),
      .small(),
      .span(),
      .strong(),
      .sub(),
      .sup(),
      .svg(safe: ""),
      .svg(unsafe: ""),
      .table(
        .caption(),
        .colgroup(
          .col()
        ),
        .tbody(),
        .tfoot(),
        .thead(),
        .tr(
          .th(),
          .td()
        )
      ),
      .template(),
      .textarea(""),
      .time(),
      .u(),
      .ul(
        .li()
      ),
      .var(),
      .video(.track(src: "track1"), transparent: "Fallback"),
    ]

    assertSnapshot(matching: doc, as: .html)
  }
}
