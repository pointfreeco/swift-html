import Html
import XCTest

final class AriaTests: XCTestCase {
  func testAriaAttributes() {
    XCTAssertEqual("<div aria-activedescendant=\"id\"></div>", render(div([ariaActivedescendant("id")], [])))

    XCTAssertEqual("<div aria-atomic=\"true\"></div>", render(div([ariaAtomic(true)], [])))
    XCTAssertEqual("<div aria-atomic=\"false\"></div>", render(div([ariaAtomic(false)], [])))

    XCTAssertEqual("<div aria-autocomplete=\"both\"></div>", render(div([ariaAutocomplete(.both)], [])))
    XCTAssertEqual("<div aria-autocomplete=\"inline\"></div>", render(div([ariaAutocomplete(.inline)], [])))
    XCTAssertEqual("<div aria-autocomplete=\"list\"></div>", render(div([ariaAutocomplete(.list)], [])))
    XCTAssertEqual("<div aria-autocomplete=\"none\"></div>", render(div([ariaAutocomplete(.none)], [])))

    XCTAssertEqual("<div aria-busy=\"true\"></div>", render(div([ariaBusy(true)], [])))
    XCTAssertEqual("<div aria-busy=\"false\"></div>", render(div([ariaBusy(false)], [])))

    XCTAssertEqual("<div aria-checked=\"false\"></div>", render(div([ariaChecked(.false)], [])))
    XCTAssertEqual("<div aria-checked=\"mixed\"></div>", render(div([ariaChecked(.mixed)], [])))
    XCTAssertEqual("<div aria-checked=\"true\"></div>", render(div([ariaChecked(.true)], [])))
    XCTAssertEqual("<div aria-checked=\"undefined\"></div>", render(div([ariaChecked(.undefined)], [])))
    XCTAssertEqual("<div aria-checked=\"false\"></div>", render(div([ariaChecked(false)], [])))
    XCTAssertEqual("<div aria-checked=\"true\"></div>", render(div([ariaChecked(true)], [])))

    XCTAssertEqual("<div aria-colcount=\"2\"></div>", render(div([ariaColcount(2)], [])))

    XCTAssertEqual("<div aria-colindex=\"2\"></div>", render(div([ariaColindex(2)], [])))

    XCTAssertEqual("<div aria-colspan=\"2\"></div>", render(div([ariaColspan(2)], [])))

    XCTAssertEqual("<div aria-controls=\"id\"></div>", render(div([ariaControls("id")], [])))

    XCTAssertEqual("<div aria-current=\"date\"></div>", render(div([ariaCurrent(.date)], [])))
    XCTAssertEqual("<div aria-current=\"false\"></div>", render(div([ariaCurrent(.false)], [])))
    XCTAssertEqual("<div aria-current=\"location\"></div>", render(div([ariaCurrent(.location)], [])))
    XCTAssertEqual("<div aria-current=\"page\"></div>", render(div([ariaCurrent(.page)], [])))
    XCTAssertEqual("<div aria-current=\"step\"></div>", render(div([ariaCurrent(.step)], [])))
    XCTAssertEqual("<div aria-current=\"time\"></div>", render(div([ariaCurrent(.time)], [])))
    XCTAssertEqual("<div aria-current=\"true\"></div>", render(div([ariaCurrent(.true)], [])))
    XCTAssertEqual("<div aria-current=\"false\"></div>", render(div([ariaCurrent(false)], [])))
    XCTAssertEqual("<div aria-current=\"true\"></div>", render(div([ariaCurrent(true)], [])))

    XCTAssertEqual("<div aria-describedby=\"id\"></div>", render(div([ariaDescribedby("id")], [])))

    XCTAssertEqual("<div aria-details=\"id\"></div>", render(div([ariaDetails("id")], [])))

    XCTAssertEqual("<div aria-disabled=\"false\"></div>", render(div([ariaDisabled(false)], [])))
    XCTAssertEqual("<div aria-disabled=\"true\"></div>", render(div([ariaDisabled(true)], [])))

    XCTAssertEqual("<div aria-dropeffect=\"copy\"></div>", render(div([ariaDropeffect(.copy)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"execute\"></div>", render(div([ariaDropeffect(.execute)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"link\"></div>", render(div([ariaDropeffect(.link)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"move\"></div>", render(div([ariaDropeffect(.move)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"none\"></div>", render(div([ariaDropeffect(.none)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"popup\"></div>", render(div([ariaDropeffect(.popup)], [])))

    XCTAssertEqual("<div aria-errormessage=\"error!\"></div>", render(div([ariaErrormessage("error!")], [])))

    XCTAssertEqual("<div aria-expanded=\"false\"></div>", render(div([ariaExpanded(.false)], [])))
    XCTAssertEqual("<div aria-expanded=\"true\"></div>", render(div([ariaExpanded(.true)], [])))
    XCTAssertEqual("<div aria-expanded=\"undefined\"></div>", render(div([ariaExpanded(.undefined)], [])))
    XCTAssertEqual("<div aria-expanded=\"false\"></div>", render(div([ariaExpanded(false)], [])))
    XCTAssertEqual("<div aria-expanded=\"true\"></div>", render(div([ariaExpanded(true)], [])))

    XCTAssertEqual("<div aria-flowto=\"id\"></div>", render(div([ariaFlowto("id")], [])))

    XCTAssertEqual("<div aria-grabbed=\"false\"></div>", render(div([ariaGrabbed(.false)], [])))
    XCTAssertEqual("<div aria-grabbed=\"true\"></div>", render(div([ariaGrabbed(.true)], [])))
    XCTAssertEqual("<div aria-grabbed=\"undefined\"></div>", render(div([ariaGrabbed(.undefined)], [])))
    XCTAssertEqual("<div aria-grabbed=\"false\"></div>", render(div([ariaGrabbed(false)], [])))
    XCTAssertEqual("<div aria-grabbed=\"true\"></div>", render(div([ariaGrabbed(true)], [])))

    XCTAssertEqual("<div aria-haspopup=\"dialog\"></div>", render(div([ariaHaspopup(.dialog)], [])))
    XCTAssertEqual("<div aria-haspopup=\"false\"></div>", render(div([ariaHaspopup(.false)], [])))
    XCTAssertEqual("<div aria-haspopup=\"grid\"></div>", render(div([ariaHaspopup(.grid)], [])))
    XCTAssertEqual("<div aria-haspopup=\"listbox\"></div>", render(div([ariaHaspopup(.listbox)], [])))
    XCTAssertEqual("<div aria-haspopup=\"menu\"></div>", render(div([ariaHaspopup(.menu)], [])))
    XCTAssertEqual("<div aria-haspopup=\"tree\"></div>", render(div([ariaHaspopup(.tree)], [])))
    XCTAssertEqual("<div aria-haspopup=\"false\"></div>", render(div([ariaHaspopup(false)], [])))
    XCTAssertEqual("<div aria-haspopup=\"menu\"></div>", render(div([ariaHaspopup(true)], [])))

    XCTAssertEqual("<div aria-hidden=\"false\"></div>", render(div([ariaHidden(.false)], [])))
    XCTAssertEqual("<div aria-hidden=\"true\"></div>", render(div([ariaHidden(.true)], [])))
    XCTAssertEqual("<div aria-hidden=\"undefined\"></div>", render(div([ariaHidden(.undefined)], [])))
    XCTAssertEqual("<div aria-hidden=\"false\"></div>", render(div([ariaHidden(false)], [])))
    XCTAssertEqual("<div aria-hidden=\"true\"></div>", render(div([ariaHidden(true)], [])))

    XCTAssertEqual("<div aria-invalid=\"false\"></div>", render(div([ariaInvalid(.false)], [])))
    XCTAssertEqual("<div aria-invalid=\"grammar\"></div>", render(div([ariaInvalid(.grammar)], [])))
    XCTAssertEqual("<div aria-invalid=\"spelling\"></div>", render(div([ariaInvalid(.spelling)], [])))
    XCTAssertEqual("<div aria-invalid=\"true\"></div>", render(div([ariaInvalid(.true)], [])))
    XCTAssertEqual("<div aria-invalid=\"false\"></div>", render(div([ariaInvalid(false)], [])))
    XCTAssertEqual("<div aria-invalid=\"true\"></div>", render(div([ariaInvalid(true)], [])))

    XCTAssertEqual("<div aria-keyshortcuts=\"id\"></div>", render(div([ariaKeyshortcuts("id")], [])))

    XCTAssertEqual("<div aria-label=\"id\"></div>", render(div([ariaLabel("id")], [])))

    XCTAssertEqual("<div aria-labelledby=\"id\"></div>", render(div([ariaLabelledby("id")], [])))

    XCTAssertEqual("<div aria-level=\"2\"></div>", render(div([ariaLevel(2)], [])))

    XCTAssertEqual("<div aria-live=\"assertive\"></div>", render(div([ariaLive(.assertive)], [])))
    XCTAssertEqual("<div aria-live=\"off\"></div>", render(div([ariaLive(.off)], [])))
    XCTAssertEqual("<div aria-live=\"polite\"></div>", render(div([ariaLive(.polite)], [])))

    XCTAssertEqual("<div aria-modal=\"false\"></div>", render(div([ariaModal(false)], [])))
    XCTAssertEqual("<div aria-modal=\"true\"></div>", render(div([ariaModal(true)], [])))

    XCTAssertEqual("<div aria-multiline=\"false\"></div>", render(div([ariaMultiline(false)], [])))
    XCTAssertEqual("<div aria-multiline=\"true\"></div>", render(div([ariaMultiline(true)], [])))

    XCTAssertEqual("<div aria-multiselectable=\"false\"></div>", render(div([ariaMultiselectable(false)], [])))
    XCTAssertEqual("<div aria-multiselectable=\"true\"></div>", render(div([ariaMultiselectable(true)], [])))

    XCTAssertEqual("<div aria-orientation=\"horizontal\"></div>", render(div([ariaOrientation(.horizontal)], [])))
    XCTAssertEqual("<div aria-orientation=\"undefined\"></div>", render(div([ariaOrientation(.undefined)], [])))
    XCTAssertEqual("<div aria-orientation=\"vertical\"></div>", render(div([ariaOrientation(.vertical)], [])))

    XCTAssertEqual("<div aria-owns=\"id\"></div>", render(div([ariaOwns("id")], [])))

    XCTAssertEqual("<div aria-placeholder=\"id\"></div>", render(div([ariaPlaceholder("id")], [])))

    XCTAssertEqual("<div aria-posinset=\"2\"></div>", render(div([ariaPosinset(2)], [])))

    XCTAssertEqual("<div aria-pressed=\"false\"></div>", render(div([ariaPressed(.false)], [])))
    XCTAssertEqual("<div aria-pressed=\"mixed\"></div>", render(div([ariaPressed(.mixed)], [])))
    XCTAssertEqual("<div aria-pressed=\"true\"></div>", render(div([ariaPressed(.true)], [])))
    XCTAssertEqual("<div aria-pressed=\"undefined\"></div>", render(div([ariaPressed(.undefined)], [])))
    XCTAssertEqual("<div aria-pressed=\"false\"></div>", render(div([ariaPressed(false)], [])))
    XCTAssertEqual("<div aria-pressed=\"true\"></div>", render(div([ariaPressed(true)], [])))

    XCTAssertEqual("<div aria-readonly=\"false\"></div>", render(div([ariaReadonly(false)], [])))
    XCTAssertEqual("<div aria-readonly=\"true\"></div>", render(div([ariaReadonly(true)], [])))

    XCTAssertEqual("<div aria-relevant></div>", render(div([ariaRelevant([])], [])))
    XCTAssertEqual("<div aria-relevant=\"all\"></div>", render(div([ariaRelevant([.all])], [])))
    XCTAssertEqual("<div aria-relevant=\"additions removals\"></div>", render(div([ariaRelevant([.additions, .removals])], [])))

    XCTAssertEqual("<div aria-required=\"false\"></div>", render(div([ariaRequired(false)], [])))
    XCTAssertEqual("<div aria-required=\"true\"></div>", render(div([ariaRequired(true)], [])))

    XCTAssertEqual("<div aria-roledescription=\"id\"></div>", render(div([ariaRoledescription("id")], [])))

    XCTAssertEqual("<div aria-rowcount=\"2\"></div>", render(div([ariaRowcount(2)], [])))

    XCTAssertEqual("<div aria-rowindex=\"2\"></div>", render(div([ariaRowindex(2)], [])))

    XCTAssertEqual("<div aria-rowspan=\"2\"></div>", render(div([ariaRowspan(2)], [])))

    XCTAssertEqual("<div aria-selected=\"false\"></div>", render(div([ariaSelected(.false)], [])))
    XCTAssertEqual("<div aria-selected=\"true\"></div>", render(div([ariaSelected(.true)], [])))
    XCTAssertEqual("<div aria-selected=\"undefined\"></div>", render(div([ariaSelected(.undefined)], [])))
    XCTAssertEqual("<div aria-selected=\"false\"></div>", render(div([ariaSelected(false)], [])))
    XCTAssertEqual("<div aria-selected=\"true\"></div>", render(div([ariaSelected(true)], [])))

    XCTAssertEqual("<div aria-rowspan=\"2\"></div>", render(div([ariaRowspan(2)], [])))

    XCTAssertEqual("<div aria-setsize=\"2\"></div>", render(div([ariaSetsize(2)], [])))

    XCTAssertEqual("<div aria-sort=\"ascending\"></div>", render(div([ariaSort(.ascending)], [])))
    XCTAssertEqual("<div aria-sort=\"descending\"></div>", render(div([ariaSort(.descending)], [])))
    XCTAssertEqual("<div aria-sort=\"none\"></div>", render(div([ariaSort(.none)], [])))
    XCTAssertEqual("<div aria-sort=\"other\"></div>", render(div([ariaSort(.other)], [])))

    XCTAssertEqual("<div aria-valuemax=\"1.2\"></div>", render(div([ariaValuemax(1.2)], [])))

    XCTAssertEqual("<div aria-valuemin=\"1.2\"></div>", render(div([ariaValuemin(1.2)], [])))

    XCTAssertEqual("<div aria-valuenow=\"1.2\"></div>", render(div([ariaValuenow(1.2)], [])))

    XCTAssertEqual("<div aria-valuetext=\"1.2\"></div>", render(div([ariaValuetext("1.2")], [])))

    XCTAssertEqual("<div role=\"alert\"></div>", render(div([role(.alert)], [])))
    XCTAssertEqual("<div role=\"alertdialog\"></div>", render(div([role(.alertdialog)], [])))
    XCTAssertEqual("<div role=\"application\"></div>", render(div([role(.application)], [])))
    XCTAssertEqual("<div role=\"article\"></div>", render(div([role(.article)], [])))
    XCTAssertEqual("<div role=\"banner\"></div>", render(div([role(.banner)], [])))
    XCTAssertEqual("<div role=\"button\"></div>", render(div([role(.button)], [])))
    XCTAssertEqual("<div role=\"cell\"></div>", render(div([role(.cell)], [])))
    XCTAssertEqual("<div role=\"checkbox\"></div>", render(div([role(.checkbox)], [])))
    XCTAssertEqual("<div role=\"columnheader\"></div>", render(div([role(.columnheader)], [])))
    XCTAssertEqual("<div role=\"combobox\"></div>", render(div([role(.combobox)], [])))
    XCTAssertEqual("<div role=\"complementary\"></div>", render(div([role(.complementary)], [])))
    XCTAssertEqual("<div role=\"contentinfo\"></div>", render(div([role(.contentinfo)], [])))
    XCTAssertEqual("<div role=\"definition\"></div>", render(div([role(.definition)], [])))
    XCTAssertEqual("<div role=\"dialog\"></div>", render(div([role(.dialog)], [])))
    XCTAssertEqual("<div role=\"directory\"></div>", render(div([role(.directory)], [])))
    XCTAssertEqual("<div role=\"document\"></div>", render(div([role(.document)], [])))
    XCTAssertEqual("<div role=\"feed\"></div>", render(div([role(.feed)], [])))
    XCTAssertEqual("<div role=\"figure\"></div>", render(div([role(.figure)], [])))
    XCTAssertEqual("<div role=\"form\"></div>", render(div([role(.form)], [])))
    XCTAssertEqual("<div role=\"grid\"></div>", render(div([role(.grid)], [])))
    XCTAssertEqual("<div role=\"gridcell\"></div>", render(div([role(.gridcell)], [])))
    XCTAssertEqual("<div role=\"group\"></div>", render(div([role(.group)], [])))
    XCTAssertEqual("<div role=\"heading\"></div>", render(div([role(.heading)], [])))
    XCTAssertEqual("<div role=\"img\"></div>", render(div([role(.img)], [])))
    XCTAssertEqual("<div role=\"link\"></div>", render(div([role(.link)], [])))
    XCTAssertEqual("<div role=\"list\"></div>", render(div([role(.list)], [])))
    XCTAssertEqual("<div role=\"listbox\"></div>", render(div([role(.listbox)], [])))
    XCTAssertEqual("<div role=\"listitem\"></div>", render(div([role(.listitem)], [])))
    XCTAssertEqual("<div role=\"log\"></div>", render(div([role(.log)], [])))
    XCTAssertEqual("<div role=\"main\"></div>", render(div([role(.main)], [])))
    XCTAssertEqual("<div role=\"marquee\"></div>", render(div([role(.marquee)], [])))
    XCTAssertEqual("<div role=\"math\"></div>", render(div([role(.math)], [])))
    XCTAssertEqual("<div role=\"menu\"></div>", render(div([role(.menu)], [])))
    XCTAssertEqual("<div role=\"menubar\"></div>", render(div([role(.menubar)], [])))
    XCTAssertEqual("<div role=\"menuitem\"></div>", render(div([role(.menuitem)], [])))
    XCTAssertEqual("<div role=\"menuitemcheckbox\"></div>", render(div([role(.menuitemcheckbox)], [])))
    XCTAssertEqual("<div role=\"menuitemradio\"></div>", render(div([role(.menuitemradio)], [])))
    XCTAssertEqual("<div role=\"navigation\"></div>", render(div([role(.navigation)], [])))
    XCTAssertEqual("<div role=\"none\"></div>", render(div([role(.none)], [])))
    XCTAssertEqual("<div role=\"note\"></div>", render(div([role(.note)], [])))
    XCTAssertEqual("<div role=\"option\"></div>", render(div([role(.option)], [])))
    XCTAssertEqual("<div role=\"presentation\"></div>", render(div([role(.presentation)], [])))
    XCTAssertEqual("<div role=\"progressbar\"></div>", render(div([role(.progressbar)], [])))
    XCTAssertEqual("<div role=\"radio\"></div>", render(div([role(.radio)], [])))
    XCTAssertEqual("<div role=\"radiogroup\"></div>", render(div([role(.radiogroup)], [])))
    XCTAssertEqual("<div role=\"region\"></div>", render(div([role(.region)], [])))
    XCTAssertEqual("<div role=\"row\"></div>", render(div([role(.row)], [])))
    XCTAssertEqual("<div role=\"rowgroup\"></div>", render(div([role(.rowgroup)], [])))
    XCTAssertEqual("<div role=\"rowheader\"></div>", render(div([role(.rowheader)], [])))
    XCTAssertEqual("<div role=\"scrollbar\"></div>", render(div([role(.scrollbar)], [])))
    XCTAssertEqual("<div role=\"search\"></div>", render(div([role(.search)], [])))
    XCTAssertEqual("<div role=\"searchbox\"></div>", render(div([role(.searchbox)], [])))
    XCTAssertEqual("<div role=\"separator\"></div>", render(div([role(.separator)], [])))
    XCTAssertEqual("<div role=\"slider\"></div>", render(div([role(.slider)], [])))
    XCTAssertEqual("<div role=\"spinbutton\"></div>", render(div([role(.spinbutton)], [])))
    XCTAssertEqual("<div role=\"status\"></div>", render(div([role(.status)], [])))
    XCTAssertEqual("<div role=\"switch\"></div>", render(div([role(.switch)], [])))
    XCTAssertEqual("<div role=\"tab\"></div>", render(div([role(.tab)], [])))
    XCTAssertEqual("<div role=\"table\"></div>", render(div([role(.table)], [])))
    XCTAssertEqual("<div role=\"tablist\"></div>", render(div([role(.tablist)], [])))
    XCTAssertEqual("<div role=\"tabpanel\"></div>", render(div([role(.tabpanel)], [])))
    XCTAssertEqual("<div role=\"term\"></div>", render(div([role(.term)], [])))
    XCTAssertEqual("<div role=\"textbox\"></div>", render(div([role(.textbox)], [])))
    XCTAssertEqual("<div role=\"timer\"></div>", render(div([role(.timer)], [])))
    XCTAssertEqual("<div role=\"toolbar\"></div>", render(div([role(.toolbar)], [])))
    XCTAssertEqual("<div role=\"tooltip\"></div>", render(div([role(.tooltip)], [])))
    XCTAssertEqual("<div role=\"tree\"></div>", render(div([role(.tree)], [])))
    XCTAssertEqual("<div role=\"treegrid\"></div>", render(div([role(.treegrid)], [])))
    XCTAssertEqual("<div role=\"treeitem\"></div>", render(div([role(.treeitem)], [])))
  }
}

