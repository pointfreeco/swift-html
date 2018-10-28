import Html
import XCTest

final class AttributesTests: XCTestCase {
  func testAttributes() {
    XCTAssertEqual(
      """
      <th abbr="blob" colspan="1" headers="blob" rowspan="1" scope></th>
      """,
      render(th([abbr("blob"), colspan(1), headers("blob"), rowspan(1), scope(.auto)], []))
    )
    XCTAssertEqual("<th scope=\"col\"></th>", render(th([scope(.col)], [])))
    XCTAssertEqual("<th scope=\"colgroup\"></th>", render(th([scope(.colgroup)], [])))
    XCTAssertEqual("<th scope=\"row\"></th>", render(th([scope(.row)], [])))
    XCTAssertEqual("<th scope=\"rowgroup\"></th>", render(th([scope(.rowgroup)], [])))

    XCTAssertEqual(
      "<a href=\"/user/foo&quot; onmouseover=&quot;alert(1)\">XSS</a>",
      render(a([href("/user/foo\" onmouseover=\"alert(1)")], ["XSS"]))
    )

    XCTAssertEqual("<a accesskey=\"a\"></a>", render(a([accesskey("a")], [])))

    XCTAssertEqual(
      """
      <form action="/" name="blob" novalidate></form>
      """,
      render(form([action("/"), Html.method(.get), Html.name("blob"), novalidate(true)], []))
    )
    XCTAssertEqual(
      """
      <form action="/" method="post"></form>
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
      <button autofocus disabled form="form" name="blob"></button>
      """,
      render(button([autofocus(true), disabled(true), form("form"), Html.name("blob")], []))
    )
    XCTAssertEqual(
      """
      <button></button>
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

    XCTAssertEqual("<blockquote cite=\"blob\"></blockquote>", render(blockquote([cite("blob")], [])))

    let date = Date(timeIntervalSinceReferenceDate: 0)

    XCTAssertEqual(
      """
      <del cite="blob" datetime="2001-01-01T00:00:00Z"></del>
      """,
      render(del([cite("blob"), datetime(date)], []))
    )

    XCTAssertEqual(
      """
      <del cite="blob" datetime="2001-01-01T00:00:00Z"></del>
      """,
      render(del([cite("blob"), datetime(date)], []))
    )

    XCTAssertEqual("<q cite=\"blob\"></q>", render(q([cite("blob")], [])))

    XCTAssertEqual("<div class=\"blob\"></div>", render(div([Html.class("blob")], [])))

    XCTAssertEqual(
      """
      <td colspan="1" headers="blob" rowspan="1"></td>
      """,
      render(td([colspan(1), headers("blob"), rowspan(1)], []))
    )

    XCTAssertEqual("<a contenteditable></a>", render(a([contenteditable(true)], [])))
    XCTAssertEqual("<a contenteditable=\"false\"></a>", render(a([contenteditable(false)], [])))
    XCTAssertEqual("<a></a>", render(a([contenteditable(.inherit)], [])))

    XCTAssertEqual("<a data-blob=\"deadbeef\"></a>", render(a([data("blob", "deadbeef")], [])))

    XCTAssertEqual("<time datetime=\"2001-01-01T00:00:00Z\"></time>", render(time([datetime(date)], [])))

    XCTAssertEqual("<a dir=\"ltr\"></a>", render(a([dir(.ltr)], [])))
    XCTAssertEqual("<a dir=\"rtl\"></a>", render(a([dir(.rtl)], [])))
    XCTAssertEqual("<a dir=\"auto\"></a>", render(a([dir(.auto)], [])))

    XCTAssertEqual(
      """
      <fieldset disabled name="blob"></fieldset>
      """,
      render(fieldset([disabled(true), Html.name("blob")], []))
    )
    XCTAssertEqual("<fieldset></fieldset>", render(fieldset([disabled(false)], [])))

    XCTAssertEqual("<optgroup disabled></optgroup>", render(optgroup([disabled(true)], [])))
    XCTAssertEqual("<optgroup></optgroup>", render(optgroup([disabled(false)], [])))

    XCTAssertEqual("<a draggable=\"true\"></a>", render(a([draggable(true)], [])))
    XCTAssertEqual("<a draggable=\"false\"></a>", render(a([draggable(false)], [])))
    XCTAssertEqual("<a></a>", render(a([draggable(.auto)], [])))

    XCTAssertEqual("""
      <form enctype=\"application/x-www-form-urlencoded\"></form>
      """,
      render(form([enctype(.applicationXWwwFormUrlencoded)], []))
    )
    XCTAssertEqual("""
      <form enctype=\"multipart/form-data\"></form>
      """,
      render(form([enctype(.multipartFormData)], []))
    )
    XCTAssertEqual("""
      <form enctype=\"text/plain\"></form>
      """,
      render(form([enctype(.textPlain)], []))
    )

    XCTAssertEqual(
      """
      <label for="blob" form="form"></label>
      """,
      render(label([`for`("blob"), form("form")], []))
    )

    XCTAssertEqual(
      """
      <output for="blob" name="blob name"></output>
      """,
      render(output([`for`("blob"), Html.name("blob name")], []))
    )

    XCTAssertEqual("<canvas height=\"42\" width=\"43\"></canvas>", render(canvas([height(42), width(43)], [])))
    XCTAssertEqual(
      """
      <iframe height="42" name="blob" sandbox src="src" srcdoc="srcdoc" width="43"></iframe>
      """,
      render(iframe([height(42), Html.name("blob"), sandbox(true), src("src"), srcdoc("srcdoc"), width(43)], []))
    )
    XCTAssertEqual(
      """
      <iframe></iframe>
      """,
      render(iframe([sandbox(false)], []))
    )
    XCTAssertEqual(
      """
      <iframe sandbox="allow-forms allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation"></iframe>
      """,
      render(iframe([sandbox([.allowForms, .allowPointerLock, .allowPopups, .allowPresentation, .allowSameOrigin, .allowScripts, .allowTopNavigation])], []))
    )
    XCTAssertEqual(
      """
      <object height="42" name="blob" width="43"></object>
      """,
      render(object([height(42), Html.name("blob"), width(43)], []))
    )
    XCTAssertEqual("<svg height=\"42\" width=\"43\"></svg>", render(svg([height(42), width(43)], "")))

    XCTAssertEqual("<a hidden></a>", render(a([hidden(true)], [])))
    XCTAssertEqual("<a></a>", render(a([hidden(false)], [])))

    XCTAssertEqual("<a href=\"blob\" rel=\"alternate\"></a>", render(a([href("blob"), rel(.alternate)], [])))
    XCTAssertEqual("<area href=\"blob\" rel=\"alternate\">", render(area([href("blob"), rel(.alternate)])))
    XCTAssertEqual("<base href=\"blob\">", render(base([href("blob")])))
    XCTAssertEqual("<link href=\"blob\" rel=\"alternate\">", render(link([href("blob"), rel(.alternate)])))

    XCTAssertEqual("<a href=\"mailto:blob@pointfree.co\"></a>", render(a([mailto("blob@pointfree.co")], [])))

    XCTAssertEqual("<a id=\"blob\"></a>", render(a([id("blob")], [])))

    XCTAssertEqual("<a lang=\"en\"></a>", render(a([lang(.en)], [])))

    XCTAssertEqual("<details open></details>", render(details([open(true)], [])))
    XCTAssertEqual("<details></details>", render(details([open(false)], [])))

    XCTAssertEqual("<ol reversed start=\"1\"></ol>", render(ol([reversed(true), start(1)], [])))
    XCTAssertEqual("<ol></ol>", render(ol([reversed(false)], [])))

    XCTAssertEqual("<area shape=\"circle\">", render(area([shape(.circle)])))
    XCTAssertEqual("<area shape=\"poly\">", render(area([shape(.poly)])))
    XCTAssertEqual("<area>", render(area([shape(.rect)])))

    XCTAssertEqual("<col span=\"1\">", render(col([span(1)])))
    XCTAssertEqual("<colgroup span=\"1\"></colgroup>", render(colgroup([span(1)], [])))

    XCTAssertEqual("<a spellcheck=\"true\"></a>", render(a([spellcheck(true)], [])))
    XCTAssertEqual("<a spellcheck=\"false\"></a>", render(a([spellcheck(false)], [])))

    XCTAssertEqual("<embed src=\"src\">", render(embed([src("src")])))

    XCTAssertEqual("<a style=\"display: none\"></a>", render(a([style("display: none")], [])))

    XCTAssertEqual("<a tabindex=\"1\"></a>", render(a([tabindex(1)], [])))

    XCTAssertEqual("<a target=\"_blank\"></a>", render(a([target(.blank)], [])))
    XCTAssertEqual("<a></a>", render(a([target(.self)], [])))
    XCTAssertEqual("<a target=\"_parent\"></a>", render(a([target(.parent)], [])))
    XCTAssertEqual("<a target=\"_top\"></a>", render(a([target(.top)], [])))
    XCTAssertEqual("<a target=\"custom\"></a>", render(a([target(.init(rawValue: "custom"))], [])))

    XCTAssertEqual("<a title=\"blob\"></a>", render(a([title("blob")], [])))

    XCTAssertEqual("<a translate=\"yes\"></a>", render(a([translate(true)], [])))
    XCTAssertEqual("<a translate=\"no\"></a>", render(a([translate(false)], [])))

    XCTAssertEqual("<button type=\"button\"></button>", render(button([type(.button)], [])))
    XCTAssertEqual("<button type=\"reset\"></button>", render(button([type(.reset)], [])))
    XCTAssertEqual("<button type=\"submit\"></button>", render(button([type(.submit)], [])))

    XCTAssertEqual("<ol type=\"1\"></ol>", render(ol([type(.decimal)], [])))
    XCTAssertEqual("<ol type=\"a\"></ol>", render(ol([type(.lowerAlpha)], [])))
    XCTAssertEqual("<ol type=\"A\"></ol>", render(ol([type(.upperAlpha)], [])))
    XCTAssertEqual("<ol type=\"i\"></ol>", render(ol([type(.lowerRoman)], [])))
    XCTAssertEqual("<ol type=\"I\"></ol>", render(ol([type(.upperRoman)], [])))
  }
}

