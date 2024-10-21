import Html
import XCTest

final class EventsTests: XCTestCase {
  func testEventsSnapshot() {
    let doc: Node = [
      .audio(
        attributes: [
          .onabort(safe: "alert('Abort');"),
          .onabort(unsafe: "alert('Abort');"),
          .oncanplay(safe: "alert();"),
          .oncanplay(unsafe: "alert();"),
          .oncanplaythrough(safe: "alert();"),
          .oncanplaythrough(unsafe: "alert();"),
          .ondurationchange(safe: "alert();"),
          .ondurationchange(unsafe: "alert();"),
          .onemptied(safe: "alert();"),
          .onemptied(unsafe: "alert();"),
          .onended(safe: "alert();"),
          .onended(unsafe: "alert();"),
          .onerror(safe: "alert();"),
          .onerror(unsafe: "alert();"),
          .onloadeddata(safe: "alert();"),
          .onloadeddata(unsafe: "alert();"),
          .onloadedmetadata(safe: "alert();"),
          .onloadedmetadata(unsafe: "alert();"),
          .onloadstart(safe: "alert();"),
          .onloadstart(unsafe: "alert();"),
          .onpause(safe: "alert();"),
          .onpause(unsafe: "alert();"),
          .onplay(safe: "alert();"),
          .onplay(unsafe: "alert();"),
          .onplaying(safe: "alert();"),
          .onplaying(unsafe: "alert();"),
          .onseeked(safe: "alert();"),
          .onseeked(unsafe: "alert();"),
          .onseeking(safe: "alert();"),
          .onseeking(unsafe: "alert();"),
          .onstalled(safe: "alert();"),
          .onstalled(unsafe: "alert();"),
          .onprogress(safe: "alert();"),
          .onprogress(unsafe: "alert();"),
          .onratechange(safe: "alert();"),
          .onratechange(unsafe: "alert();"),
          .onsuspend(safe: "alert();"),
          .onsuspend(unsafe: "alert();"),
          .ontimeupdate(safe: "alert();"),
          .ontimeupdate(unsafe: "alert();"),
          .onvolumechange(safe: "alert();"),
          .onvolumechange(unsafe: "alert();"),
          .onwaiting(safe: "alert();"),
          .onwaiting(unsafe: "alert();"),
        ],
        .track(
          src: "track",
          attributes: [
            .oncuechange(safe: "alert();"),
            .oncuechange(unsafe: "alert();"),
          ])
      ),
      .details(
        attributes: [
          .ontoggle(safe: "alert();"),
          .ontoggle(unsafe: "alert();"),
        ]
      ),
      .div(
        attributes: [
          .onblur(safe: "alert();"),
          .onblur(unsafe: "alert();"),
          .onclick(safe: "alert();"),
          .onclick(unsafe: "alert();"),
          .oncontextmenu(safe: "alert();"),
          .oncontextmenu(unsafe: "alert();"),
          .oncopy(safe: "alert();"),
          .oncopy(unsafe: "alert();"),
          .oncut(safe: "alert();"),
          .oncut(unsafe: "alert();"),
          .ondblclick(safe: "alert();"),
          .ondblclick(unsafe: "alert();"),
          .ondrag(safe: "alert();"),
          .ondrag(unsafe: "alert();"),
          .ondragend(safe: "alert();"),
          .ondragend(unsafe: "alert();"),
          .ondragenter(safe: "alert();"),
          .ondragenter(unsafe: "alert();"),
          .ondragover(safe: "alert();"),
          .ondragover(unsafe: "alert();"),
          .ondragstart(safe: "alert();"),
          .ondragstart(unsafe: "alert();"),
          .ondrop(safe: "alert();"),
          .ondrop(unsafe: "alert();"),
          .onfocus(safe: "alert();"),
          .onfocus(unsafe: "alert();"),
          .onkeydown(safe: "alert();"),
          .onkeydown(unsafe: "alert();"),
          .onkeypress(safe: "alert();"),
          .onkeypress(unsafe: "alert();"),
          .onkeyup(safe: "alert();"),
          .onkeyup(unsafe: "alert();"),
          .onmousedown(safe: "alert();"),
          .onmousedown(unsafe: "alert();"),
          .onmousemove(safe: "alert();"),
          .onmousemove(unsafe: "alert();"),
          .onmouseout(safe: "alert();"),
          .onmouseout(unsafe: "alert();"),
          .onmouseover(safe: "alert();"),
          .onmouseover(unsafe: "alert();"),
          .onmouseup(safe: "alert();"),
          .onmouseup(unsafe: "alert();"),
          .onpaste(safe: "alert();"),
          .onpaste(unsafe: "alert();"),
          .onscroll(safe: "alert();"),
          .onscroll(unsafe: "alert();"),
          .onwheel(safe: "alert();"),
          .onwheel(unsafe: "alert();"),
        ]
      ),
      .form(
        attributes: [
          .onreset(safe: "alert();"),
          .onreset(unsafe: "alert();"),
          .onsubmit(safe: "alert();"),
          .onsubmit(unsafe: "alert();"),
        ]
      ),
      .html(
        .body(
          attributes: [
            .onafterprint(safe: "alert();"),
            .onafterprint(unsafe: "alert();"),
            .onbeforeprint(safe: "alert();"),
            .onbeforeprint(unsafe: "alert();"),
            .onbeforeunload(safe: "alert();"),
            .onbeforeunload(unsafe: "alert();"),
            .onhashchange(safe: "alert();"),
            .onhashchange(unsafe: "alert();"),
            .onload(safe: "alert();"),
            .onload(unsafe: "alert();"),
            .onmessage(safe: "alert();"),
            .onmessage(unsafe: "alert();"),
            .onoffline(safe: "alert();"),
            .onoffline(unsafe: "alert();"),
            .ononline(safe: "alert();"),
            .ononline(unsafe: "alert();"),
            .onpagehide(safe: "alert();"),
            .onpagehide(unsafe: "alert();"),
            .onpageshow(safe: "alert();"),
            .onpageshow(unsafe: "alert();"),
            .onpopstate(safe: "alert();"),
            .onpopstate(unsafe: "alert();"),
            .onresize(safe: "alert();"),
            .onresize(unsafe: "alert();"),
            .onstorage(safe: "alert();"),
            .onstorage(unsafe: "alert();"),
            .onunload(safe: "alert();"),
            .onunload(unsafe: "alert();"),
          ]
        )
      ),
      .input(
        attributes: [
          .onchange(safe: "alert();"),
          .onchange(unsafe: "alert();"),
          .oninput(safe: "alert();"),
          .oninput(unsafe: "alert();"),
          .oninvalid(safe: "alert();"),
          .oninvalid(unsafe: "alert();"),
          .onsearch(safe: "alert();"),
          .onsearch(unsafe: "alert();"),
          .onselect(safe: "alert();"),
          .onselect(unsafe: "alert();"),
        ]
      ),
    ]

    XCTAssertEqual(
      """
      <audio onabort="alert('Abort');" onabort="alert('Abort');" oncanplay="alert();" oncanplay="alert();" oncanplaythrough="alert();" oncanplaythrough="alert();" ondurationchange="alert();" ondurationchange="alert();" onemptied="alert();" onemptied="alert();" onended="alert();" onended="alert();" onerror="alert();" onerror="alert();" onloadeddata="alert();" onloadeddata="alert();" onloadedmetadata="alert();" onloadedmetadata="alert();" onloadstart="alert();" onloadstart="alert();" onpause="alert();" onpause="alert();" onplay="alert();" onplay="alert();" onplaying="alert();" onplaying="alert();" onseeked="alert();" onseeked="alert();" onseeking="alert();" onseeking="alert();" onstalled="alert();" onstalled="alert();" onprogress="alert();" onprogress="alert();" onratechange="alert();" onratechange="alert();" onsuspend="alert();" onsuspend="alert();" ontimeupdate="alert();" ontimeupdate="alert();" onvolumechange="alert();" onvolumechange="alert();" onwaiting="alert();" onwaiting="alert();"><track src="track" oncuechange="alert();" oncuechange="alert();"></audio><details ontoggle="alert();" ontoggle="alert();"></details><div onblur="alert();" onblur="alert();" onclick="alert();" onclick="alert();" oncontextmenu="alert();" oncontextmenu="alert();" oncopy="alert();" oncopy="alert();" oncut="alert();" oncut="alert();" ondblclick="alert();" ondblclick="alert();" ondrag="alert();" ondrag="alert();" ondragend="alert();" ondragend="alert();" ondragenter="alert();" ondragenter="alert();" ondragover="alert();" ondragover="alert();" ondragstart="alert();" ondragstart="alert();" ondrop="alert();" ondrop="alert();" onfocus="alert();" onfocus="alert();" onkeydown="alert();" onkeydown="alert();" onkeypress="alert();" onkeypress="alert();" onkeyup="alert();" onkeyup="alert();" onmousedown="alert();" onmousedown="alert();" onmousemove="alert();" onmousemove="alert();" onmouseout="alert();" onmouseout="alert();" onmouseover="alert();" onmouseover="alert();" onmouseup="alert();" onmouseup="alert();" onpaste="alert();" onpaste="alert();" onscroll="alert();" onscroll="alert();" onwheel="alert();" onwheel="alert();"></div><form onreset="alert();" onreset="alert();" onsubmit="alert();" onsubmit="alert();"></form><html><body onafterprint="alert();" onafterprint="alert();" onbeforeprint="alert();" onbeforeprint="alert();" onbeforeunload="alert();" onbeforeunload="alert();" onhashchange="alert();" onhashchange="alert();" onload="alert();" onload="alert();" onmessage="alert();" onmessage="alert();" onoffline="alert();" onoffline="alert();" ononline="alert();" ononline="alert();" onpagehide="alert();" onpagehide="alert();" onpageshow="alert();" onpageshow="alert();" onpopstate="alert();" onpopstate="alert();" onresize="alert();" onresize="alert();" onstorage="alert();" onstorage="alert();" onunload="alert();" onunload="alert();"></body></html><input onchange="alert();" onchange="alert();" oninput="alert();" oninput="alert();" oninvalid="alert();" oninvalid="alert();" onsearch="alert();" onsearch="alert();" onselect="alert();" onselect="alert();">
      """,
      render(doc)
    )
  }
}
