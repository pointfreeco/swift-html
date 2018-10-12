import Html
import XCTest

final class EventsTests: XCTestCase {
  func testElementsSnapshot() {
    let doc = [
      audio(
        [
          onabort("alert('Abort');"),
          onabort(unsafe: "alert('Abort');"),
          oncanplay("alert();"),
          oncanplay(unsafe: "alert();"),
          oncanplaythrough("alert();"),
          oncanplaythrough(unsafe: "alert();"),
          ondurationchange("alert();"),
          ondurationchange(unsafe: "alert();"),
          onemptied("alert();"),
          onemptied(unsafe: "alert();"),
          onended("alert();"),
          onended(unsafe: "alert();"),
          onerror("alert();"),
          onerror(unsafe: "alert();"),
          onloadeddata("alert();"),
          onloadeddata(unsafe: "alert();"),
          onloadedmetadata("alert();"),
          onloadedmetadata(unsafe: "alert();"),
          onloadstart("alert();"),
          onloadstart(unsafe: "alert();"),
          onpause("alert();"),
          onpause(unsafe: "alert();"),
          onplay("alert();"),
          onplay(unsafe: "alert();"),
          onplaying("alert();"),
          onplaying(unsafe: "alert();"),
          onseeked("alert();"),
          onseeked(unsafe: "alert();"),
          onseeking("alert();"),
          onseeking(unsafe: "alert();"),
          onstalled("alert();"),
          onstalled(unsafe: "alert();"),
          onprogress("alert();"),
          onprogress(unsafe: "alert();"),
          onratechange("alert();"),
          onratechange(unsafe: "alert();"),
          onsuspend("alert();"),
          onsuspend(unsafe: "alert();"),
          ontimeupdate("alert();"),
          ontimeupdate(unsafe: "alert();"),
          onvolumechange("alert();"),
          onvolumechange(unsafe: "alert();"),
          onwaiting("alert();"),
          onwaiting(unsafe: "alert();"),
          ],
        [
          track(src: "track", [
            oncuechange("alert();"),
            oncuechange(unsafe: "alert();"),
            ])
        ]
      ),
      details(
        [
          ontoggle("alert();"),
          ontoggle(unsafe: "alert();"),
        ],
        []
      ),
      div(
        [
          onblur("alert();"),
          onblur(unsafe: "alert();"),
          onclick("alert();"),
          onclick(unsafe: "alert();"),
          oncontextmenu("alert();"),
          oncontextmenu(unsafe: "alert();"),
          oncopy("alert();"),
          oncopy(unsafe: "alert();"),
          oncut("alert();"),
          oncut(unsafe: "alert();"),
          ondblclick("alert();"),
          ondblclick(unsafe: "alert();"),
          ondrag("alert();"),
          ondrag(unsafe: "alert();"),
          ondragend("alert();"),
          ondragend(unsafe: "alert();"),
          ondragenter("alert();"),
          ondragenter(unsafe: "alert();"),
          ondragover("alert();"),
          ondragover(unsafe: "alert();"),
          ondragstart("alert();"),
          ondragstart(unsafe: "alert();"),
          ondrop("alert();"),
          ondrop(unsafe: "alert();"),
          onfocus("alert();"),
          onfocus(unsafe: "alert();"),
          onkeydown("alert();"),
          onkeydown(unsafe: "alert();"),
          onkeypress("alert();"),
          onkeypress(unsafe: "alert();"),
          onkeyup("alert();"),
          onkeyup(unsafe: "alert();"),
          onmousedown("alert();"),
          onmousedown(unsafe: "alert();"),
          onmousemove("alert();"),
          onmousemove(unsafe: "alert();"),
          onmouseout("alert();"),
          onmouseout(unsafe: "alert();"),
          onmouseover("alert();"),
          onmouseover(unsafe: "alert();"),
          onmouseup("alert();"),
          onmouseup(unsafe: "alert();"),
          onpaste("alert();"),
          onpaste(unsafe: "alert();"),
          onscroll("alert();"),
          onscroll(unsafe: "alert();"),
          onwheel("alert();"),
          onwheel(unsafe: "alert();"),
        ],
        []
      ),
      form(
        [
          onreset("alert();"),
          onreset(unsafe: "alert();"),
          onsubmit("alert();"),
          onsubmit(unsafe: "alert();"),
          ],
        []
      ),
      html([
        body(
          [
            onafterprint("alert();"),
            onafterprint(unsafe: "alert();"),
            onbeforeprint("alert();"),
            onbeforeprint(unsafe: "alert();"),
            onbeforeunload("alert();"),
            onbeforeunload(unsafe: "alert();"),
            onhashchange("alert();"),
            onhashchange(unsafe: "alert();"),
            onload("alert();"),
            onload(unsafe: "alert();"),
            onmessage("alert();"),
            onmessage(unsafe: "alert();"),
            onoffline("alert();"),
            onoffline(unsafe: "alert();"),
            ononline("alert();"),
            ononline(unsafe: "alert();"),
            onpagehide("alert();"),
            onpagehide(unsafe: "alert();"),
            onpageshow("alert();"),
            onpageshow(unsafe: "alert();"),
            onpopstate("alert();"),
            onpopstate(unsafe: "alert();"),
            onresize("alert();"),
            onresize(unsafe: "alert();"),
            onstorage("alert();"),
            onstorage(unsafe: "alert();"),
            onunload("alert();"),
            onunload(unsafe: "alert();"),
            ],
          []
        )
        ]),
      input(
        [
          onchange("alert();"),
          onchange(unsafe: "alert();"),
          oninput("alert();"),
          oninput(unsafe: "alert();"),
          oninvalid("alert();"),
          oninvalid(unsafe: "alert();"),
          onsearch("alert();"),
          onsearch(unsafe: "alert();"),
          onselect("alert();"),
          onselect(unsafe: "alert();"),
        ]
      ),
    ]

    XCTAssertEqual(
      """
<audio onabort="alert('Abort');" onabort="alert('Abort');" oncanplay="alert();" oncanplay="alert();" oncanplaythrough="alert();" oncanplaythrough="alert();" ondurationchange="alert();" ondurationchange="alert();" onemptied="alert();" onemptied="alert();" onended="alert();" onended="alert();" onerror="alert();" onerror="alert();" onloadeddata="alert();" onloadeddata="alert();" onloadedmetadata="alert();" onloadedmetadata="alert();" onloadstart="alert();" onloadstart="alert();" onpause="alert();" onpause="alert();" onplay="alert();" onplay="alert();" onplaying="alert();" onplaying="alert();" onseeked="alert();" onseeked="alert();" onseeking="alert();" onseeking="alert();" onstalled="alert();" onstalled="alert();" onprogress="alert();" onprogress="alert();" onratechange="alert();" onratechange="alert();" onsuspend="alert();" onsuspend="alert();" ontimeupdate="alert();" ontimeupdate="alert();" onvolumechange="alert();" onvolumechange="alert();" onwaiting="alert();" onwaiting="alert();"><track src="track" oncuechange="alert();" oncuechange="alert();"></audio><details ontoggle="alert();" ontoggle="alert();"/><div onblur="alert();" onblur="alert();" onclick="alert();" onclick="alert();" oncontextmenu="alert();" oncontextmenu="alert();" oncopy="alert();" oncopy="alert();" oncut="alert();" oncut="alert();" ondblclick="alert();" ondblclick="alert();" ondrag="alert();" ondrag="alert();" ondragend="alert();" ondragend="alert();" ondragenter="alert();" ondragenter="alert();" ondragover="alert();" ondragover="alert();" ondragstart="alert();" ondragstart="alert();" ondrop="alert();" ondrop="alert();" onfocus="alert();" onfocus="alert();" onkeyup="alert();" onkeydown="alert();" onkeypress="alert();" onkeypress="alert();" onkeyup="alert();" onkeyup="alert();" onmousedown="alert();" onmousedown="alert();" onmousemove="alert();" onmousemove="alert();" onmouseout="alert();" onmouseout="alert();" onmouseover="alert();" onmouseover="alert();" onmouseup="alert();" onmouseup="alert();" onpaste="alert();" onpaste="alert();" onscroll="alert();" onscroll="alert();" onwheel="alert();" onwheel="alert();"/><form onreset="alert();" onreset="alert();" onsubmit="alert();" onsubmit="alert();"/><html><body onafterprint="alert();" onafterprint="alert();" onbeforeprint="alert();" onbeforeprint="alert();" onbeforeunload="alert();" onbeforeunload="alert();" onhashchange="alert();" onhashchange="alert();" onload="alert();" onload="alert();" onmessage="alert();" onmessage="alert();" onoffline="alert();" onoffline="alert();" ononline="alert();" ononline="alert();" onpagehide="alert();" onpagehide="alert();" onpageshow="alert();" onpageshow="alert();" onpopstate="alert();" onpopstate="alert();" onresize="alert();" onresize="alert();" onstorage="alert();" onstorage="alert();" onunload="alert();" onunload="alert();"/></html><input onchange="alert();" onchange="alert();" oninput="alert();" oninput="alert();" oninvalid="alert();" oninvalid="alert();" onsearch="alert();" onsearch="alert();" onselect="alert();" onselect="alert();">
""",
      render(doc)
    )
  }
}

