import Html
import XCTest

final class AttributesTests: XCTestCase {
  func testAttributes() {
    XCTAssertEqual(
      """
      <th abbr="blob" colspan="1" headers="blob" rowspan="1" scope/>
      """,
      render(th([abbr("blob"), colspan(1), headers("blob"), rowspan(1), scope(.auto)], []))
    )
    XCTAssertEqual("<th scope=\"col\"/>", render(th([scope(.col)], [])))
    XCTAssertEqual("<th scope=\"colgroup\"/>", render(th([scope(.colgroup)], [])))
    XCTAssertEqual("<th scope=\"row\"/>", render(th([scope(.row)], [])))
    XCTAssertEqual("<th scope=\"rowgroup\"/>", render(th([scope(.rowgroup)], [])))

    XCTAssertEqual(
      "<a href=\"/user/foo&quot; onmouseover=&quot;alert(1)\">XSS</a>",
      render(a([href("/user/foo\" onmouseover=\"alert(1)")], ["XSS"]))
    )

    XCTAssertEqual("<a accesskey=\"a\"/>", render(a([accesskey("a")], [])))

    XCTAssertEqual(
      """
      <form action="/" name="blob" novalidate/>
      """,
      render(form([action("/"), Html.method(.get), Html.name("blob"), novalidate(true)], []))
    )
    XCTAssertEqual(
      """
      <form action="/" method="post"/>
      """,
      render(form([action("/"), Html.method(.post), novalidate(false)], []))
    )
    XCTAssertEqual("<area alt=\"blob\">", render(area([alt("blob")])))

    XCTAssertEqual(
      """
      <img alt="blob" crossorigin height="42" src="src" width="43">
      """,
      render(img([alt("blob"), crossorigin(.anonymous), height(42), src("src"), width(43)]))
    )
    XCTAssertEqual(
      """
      <img crossorigin="use-credentials">
      """,
      render(img([crossorigin(.useCredentials)]))
    )

    XCTAssertEqual(
      """
      <input\
       alt="blob"\
       autofocus\
       checked\
       disabled\
       form="form"\
       height="42"\
       max="10.0"\
       max="11"\
       maxlength="12"\
       min="13.0"\
       min="14"\
       minlength="15"\
       multiple\
       name="blob name"\
       pattern=".+"\
       placeholder="..."\
       readonly\
       required\
       src="src"\
       step="2"\
       width="43"\
      >
      """,
      render(
        input(
          [
            alt("blob"),
            autofocus(true),
            checked(true),
            disabled(true),
            form("form"),
            height(42),
            max(10 as Double),
            max(11 as Int),
            maxlength(12),
            min(13 as Double),
            min(14 as Int),
            minlength(15),
            multiple(true),
            Html.name("blob name"),
            pattern(".+"),
            placeholder("..."),
            readonly(true),
            required(true),
            src("src"),
            step(2),
            width(43)
          ]
        )
      )
    )
    XCTAssertEqual(
      """
      <input>
      """,
      render(input([autofocus(false), checked(false), disabled(false), readonly(false), required(false)]))
    )

    XCTAssertEqual(
      """
      <script async charset="utf-8" defer nonce="blob" src="blob.js"></script>
      """,
      render(script([async(true), charset(.utf8), `defer`(true), nonce("blob"), src("blob.js")]))
    )
    XCTAssertEqual(
      """
      <script></script>
      """,
      render(script([async(false), `defer`(false)]))
    )

    XCTAssertEqual(
      """
      <button autofocus disabled form="form" name="blob"/>
      """,
      render(button([autofocus(true), disabled(true), form("form"), Html.name("blob")], []))
    )
    XCTAssertEqual(
      """
      <button/>
      """,
      render(button([autofocus(false), disabled(false)], []))
    )

    XCTAssertEqual(
      """
      <select autofocus disabled form="form" name="blob" required><option selected>blob</option></select>
      """,
      render(select([autofocus(true), disabled(true), form("form"), Html.name("blob"), required(true)], [option([selected(true)], "blob")]))
    )
    XCTAssertEqual(
      """
      <select><option>blob</option></select>
      """,
      render(select([autofocus(false), disabled(false), required(false)], [option([selected(false)], "blob")]))
    )

    XCTAssertEqual(
      """
      <textarea autofocus cols="80" disabled form="form" name="blob" placeholder="..." readonly required rows="24" wrap="hard"></textarea>
      """,
      render(textarea([autofocus(true), cols(80), disabled(true), form("form"), Html.name("blob"), placeholder("..."), readonly(true), required(true), rows(24), wrap(.hard)], ""))
    )
    XCTAssertEqual(
      """
      <textarea wrap="soft"></textarea>
      """,
      render(textarea([autofocus(false), disabled(false), readonly(false), required(false), wrap(.soft)], ""))
    )

    XCTAssertEqual(
      """
      <audio autoplay controls loop muted preload src="src">\
      <track src="captions" default kind="captions" label="blob" srclang="en">\
      <track src="chapters" kind="chapters">\
      <track src="descriptions" kind="descriptions">\
      <track src="metadata" kind="metadata">\
      <track src="subtitles" kind="subtitles">\
      </audio>
      """,
      render(
        audio(
          [autoplay(true), controls(true), loop(true), muted(true), preload(.auto), src("src")],
          [
            track(src: "captions", [`default`(true), kind(.captions), label("blob"), srclang(.en)]),
            track(src: "chapters", [kind(TrackKind.chapters)]),
            track(src: "descriptions", [kind(TrackKind.descriptions)]),
            track(src: "metadata", [kind(TrackKind.metadata)]),
            track(src: "subtitles", [kind(TrackKind.subtitles)])
          ]
        )
      )
    )
    XCTAssertEqual(
      """
      <audio preload="metadata"><track src="blob"></audio>
      """,
      render(audio([autoplay(false), controls(false), loop(false), muted(false), preload(.metadata)], [track(src: "blob")]))
    )
    XCTAssertEqual(
      """
      <video autoplay controls height="42" loop muted poster="blob" preload="none" src="src" width="43">\
      <track src="captions" default kind="captions" label="blob" srclang="en">\
      <track src="chapters" kind="chapters">\
      <track src="descriptions" kind="descriptions">\
      <track src="metadata" kind="metadata">\
      <track src="subtitles" kind="subtitles">\
      </video>
      """,
      render(
        video(
          [autoplay(true), controls(true), height(42), loop(true), muted(true), poster("blob"), preload(.none), src("src"), width(43)],
          [
            track(src: "captions", [`default`(true), kind(.captions), label("blob"), srclang(.en)]),
            track(src: "chapters", [kind(TrackKind.chapters)]),
            track(src: "descriptions", [kind(TrackKind.descriptions)]),
            track(src: "metadata", [kind(TrackKind.metadata)]),
            track(src: "subtitles", [kind(TrackKind.subtitles)])
          ]
        )
      )
    )
    XCTAssertEqual(
      """
      <video><track src="blob"></video>
      """,
      render(video([autoplay(false), controls(false), loop(false), muted(false)], [track(src: "blob")]))
    )

    XCTAssertEqual("<meta charset=\"utf-8\">", render(meta([charset(.utf8)])))

    XCTAssertEqual("<blockquote cite=\"blob\"/>", render(blockquote([cite("blob")], [])))

    let date = Date(timeIntervalSinceReferenceDate: 0)

    XCTAssertEqual(
      """
      <del cite="blob" datetime="2001-01-01T00:00:00Z"/>
      """,
      render(del([cite("blob"), datetime(date)], []))
    )

    XCTAssertEqual(
      """
      <del cite="blob" datetime="2001-01-01T00:00:00Z"/>
      """,
      render(del([cite("blob"), datetime(date)], []))
    )

    XCTAssertEqual("<q cite=\"blob\"/>", render(q([cite("blob")], [])))

    XCTAssertEqual("<div class=\"blob\"/>", render(div([Html.class("blob")], [])))

    XCTAssertEqual(
      """
      <td colspan="1" headers="blob" rowspan="1"/>
      """,
      render(td([colspan(1), headers("blob"), rowspan(1)], []))
    )

    XCTAssertEqual("<a contenteditable/>", render(a([contenteditable(true)], [])))
    XCTAssertEqual("<a contenteditable=\"false\"/>", render(a([contenteditable(false)], [])))
    XCTAssertEqual("<a/>", render(a([contenteditable(.inherit)], [])))

    XCTAssertEqual("<a data-blob=\"deadbeef\"/>", render(a([data("blob", "deadbeef")], [])))

    XCTAssertEqual("<time datetime=\"2001-01-01T00:00:00Z\"/>", render(time([datetime(date)], [])))

    XCTAssertEqual("<a dir=\"ltr\"/>", render(a([dir(.ltr)], [])))
    XCTAssertEqual("<a dir=\"rtl\"/>", render(a([dir(.rtl)], [])))
    XCTAssertEqual("<a dir=\"auto\"/>", render(a([dir(.auto)], [])))

    XCTAssertEqual(
      """
      <fieldset disabled name="blob"/>
      """,
      render(fieldset([disabled(true), Html.name("blob")], []))
    )
    XCTAssertEqual("<fieldset/>", render(fieldset([disabled(false)], [])))

    XCTAssertEqual("<optgroup disabled/>", render(optgroup([disabled(true)], [])))
    XCTAssertEqual("<optgroup/>", render(optgroup([disabled(false)], [])))

    XCTAssertEqual("<a draggable=\"true\"/>", render(a([draggable(true)], [])))
    XCTAssertEqual("<a draggable=\"false\"/>", render(a([draggable(false)], [])))
    XCTAssertEqual("<a/>", render(a([draggable(.auto)], [])))

    XCTAssertEqual(
      """
      <label for="blob" form="form"/>
      """,
      render(label([`for`("blob"), form("form")], []))
    )

    XCTAssertEqual(
      """
      <output for="blob" name="blob name"/>
      """,
      render(output([`for`("blob"), Html.name("blob name")], []))
    )

    XCTAssertEqual("<canvas height=\"42\" width=\"43\"/>", render(canvas([height(42), width(43)], [])))
    XCTAssertEqual(
      """
      <iframe height="42" name="blob" sandbox src="src" srcdoc="srcdoc" width="43"/>
      """,
      render(iframe([height(42), Html.name("blob"), sandbox(true), src("src"), srcdoc("srcdoc"), width(43)], []))
    )
    XCTAssertEqual(
      """
      <iframe/>
      """,
      render(iframe([sandbox(false)], []))
    )
    XCTAssertEqual(
      """
      <iframe sandbox="allow-forms allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation"/>
      """,
      render(iframe([sandbox([.allowForms, .allowPointerLock, .allowPopups, .allowPresentation, .allowSameOrigin, .allowScripts, .allowTopNavigation])], []))
    )
    XCTAssertEqual(
      """
      <object height="42" name="blob" width="43"/>
      """,
      render(object([height(42), Html.name("blob"), width(43)], []))
    )
    XCTAssertEqual("<svg height=\"42\" width=\"43\"></svg>", render(svg([height(42), width(43)], "")))

    XCTAssertEqual("<a hidden/>", render(a([hidden(true)], [])))
    XCTAssertEqual("<a/>", render(a([hidden(false)], [])))

    XCTAssertEqual("<a href=\"blob\" rel=\"alternate\"/>", render(a([href("blob"), rel(.alternate)], [])))
    XCTAssertEqual("<area href=\"blob\" rel=\"alternate\">", render(area([href("blob"), rel(.alternate)])))
    XCTAssertEqual("<base href=\"blob\">", render(base([href("blob")])))
    XCTAssertEqual("<link href=\"blob\" rel=\"alternate\">", render(link([href("blob"), rel(.alternate)])))

    XCTAssertEqual("<a href=\"mailto:blob@pointfree.co\"/>", render(a([mailto("blob@pointfree.co")], [])))

    XCTAssertEqual("<a id=\"blob\"/>", render(a([id("blob")], [])))

    XCTAssertEqual("<a lang=\"en\"/>", render(a([lang(.en)], [])))

    XCTAssertEqual("<details open/>", render(details([open(true)], [])))
    XCTAssertEqual("<details/>", render(details([open(false)], [])))

    XCTAssertEqual("<ol reversed start=\"1\"/>", render(ol([reversed(true), start(1)], [])))
    XCTAssertEqual("<ol/>", render(ol([reversed(false)], [])))

    XCTAssertEqual("<area shape=\"circle\">", render(area([shape(.circle)])))
    XCTAssertEqual("<area shape=\"poly\">", render(area([shape(.poly)])))
    XCTAssertEqual("<area>", render(area([shape(.rect)])))

    XCTAssertEqual("<col span=\"1\">", render(col([span(1)])))
    XCTAssertEqual("<colgroup span=\"1\"/>", render(colgroup([span(1)], [])))

    XCTAssertEqual("<a spellcheck=\"true\"/>", render(a([spellcheck(true)], [])))
    XCTAssertEqual("<a spellcheck=\"false\"/>", render(a([spellcheck(false)], [])))

    XCTAssertEqual("<embed src=\"src\">", render(embed([src("src")])))

    XCTAssertEqual("<a style=\"display: none\"/>", render(a([style("display: none")], [])))

    XCTAssertEqual("<a tabindex=\"1\"/>", render(a([tabindex(1)], [])))

    XCTAssertEqual("<a target=\"_blank\"/>", render(a([target(.blank)], [])))
    XCTAssertEqual("<a/>", render(a([target(.self)], [])))
    XCTAssertEqual("<a target=\"_parent\"/>", render(a([target(.parent)], [])))
    XCTAssertEqual("<a target=\"_top\"/>", render(a([target(.top)], [])))
    XCTAssertEqual("<a target=\"custom\"/>", render(a([target(.init(rawValue: "custom"))], [])))

    XCTAssertEqual("<a title=\"blob\"/>", render(a([title("blob")], [])))

    XCTAssertEqual("<a translate=\"yes\"/>", render(a([translate(true)], [])))
    XCTAssertEqual("<a translate=\"no\"/>", render(a([translate(false)], [])))

    XCTAssertEqual("<button type=\"button\"/>", render(button([type(.button)], [])))
    XCTAssertEqual("<button type=\"reset\"/>", render(button([type(.reset)], [])))
    XCTAssertEqual("<button type=\"submit\"/>", render(button([type(.submit)], [])))

    XCTAssertEqual("<ol type=\"1\"/>", render(ol([type(.decimal)], [])))
    XCTAssertEqual("<ol type=\"a\"/>", render(ol([type(.lowerAlpha)], [])))
    XCTAssertEqual("<ol type=\"A\"/>", render(ol([type(.upperAlpha)], [])))
    XCTAssertEqual("<ol type=\"i\"/>", render(ol([type(.lowerRoman)], [])))
    XCTAssertEqual("<ol type=\"I\"/>", render(ol([type(.upperRoman)], [])))
  }
}

