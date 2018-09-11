import Html
import XCTest

final class AriaTests: XCTestCase {
  func testAriaAttributes() {
    XCTAssertEqual("<div aria-activedescendant=\"id\"/>", render(div([ariaActivedescendant("id")], [])))

    XCTAssertEqual("<div aria-atomic=\"true\"/>", render(div([ariaAtomic(true)], [])))
    XCTAssertEqual("<div aria-atomic=\"false\"/>", render(div([ariaAtomic(false)], [])))

    XCTAssertEqual("<div aria-autocomplete=\"both\"/>", render(div([ariaAutocomplete(.both)], [])))
    XCTAssertEqual("<div aria-autocomplete=\"inline\"/>", render(div([ariaAutocomplete(.inline)], [])))
    XCTAssertEqual("<div aria-autocomplete=\"list\"/>", render(div([ariaAutocomplete(.list)], [])))
    XCTAssertEqual("<div aria-autocomplete=\"none\"/>", render(div([ariaAutocomplete(.none)], [])))

    XCTAssertEqual("<div aria-busy=\"true\"/>", render(div([ariaBusy(true)], [])))
    XCTAssertEqual("<div aria-busy=\"false\"/>", render(div([ariaBusy(false)], [])))

    XCTAssertEqual("<div aria-checked=\"false\"/>", render(div([ariaChecked(.false)], [])))
    XCTAssertEqual("<div aria-checked=\"mixed\"/>", render(div([ariaChecked(.mixed)], [])))
    XCTAssertEqual("<div aria-checked=\"true\"/>", render(div([ariaChecked(.true)], [])))
    XCTAssertEqual("<div aria-checked=\"undefined\"/>", render(div([ariaChecked(.undefined)], [])))
    XCTAssertEqual("<div aria-checked=\"false\"/>", render(div([ariaChecked(false)], [])))
    XCTAssertEqual("<div aria-checked=\"true\"/>", render(div([ariaChecked(true)], [])))

    XCTAssertEqual("<div aria-colcount=\"2\"/>", render(div([ariaColcount(2)], [])))

    XCTAssertEqual("<div aria-colindex=\"2\"/>", render(div([ariaColindex(2)], [])))

    XCTAssertEqual("<div aria-colspan=\"2\"/>", render(div([ariaColspan(2)], [])))

    XCTAssertEqual("<div aria-controls=\"id\"/>", render(div([ariaControls("id")], [])))

    XCTAssertEqual("<div aria-current=\"date\"/>", render(div([ariaCurrent(.date)], [])))
    XCTAssertEqual("<div aria-current=\"false\"/>", render(div([ariaCurrent(.false)], [])))
    XCTAssertEqual("<div aria-current=\"location\"/>", render(div([ariaCurrent(.location)], [])))
    XCTAssertEqual("<div aria-current=\"page\"/>", render(div([ariaCurrent(.page)], [])))
    XCTAssertEqual("<div aria-current=\"step\"/>", render(div([ariaCurrent(.step)], [])))
    XCTAssertEqual("<div aria-current=\"time\"/>", render(div([ariaCurrent(.time)], [])))
    XCTAssertEqual("<div aria-current=\"true\"/>", render(div([ariaCurrent(.true)], [])))
    XCTAssertEqual("<div aria-current=\"false\"/>", render(div([ariaCurrent(false)], [])))
    XCTAssertEqual("<div aria-current=\"true\"/>", render(div([ariaCurrent(true)], [])))

    XCTAssertEqual("<div aria-describedby=\"id\"/>", render(div([ariaDescribedby("id")], [])))

    XCTAssertEqual("<div aria-details=\"id\"/>", render(div([ariaDetails("id")], [])))

    XCTAssertEqual("<div aria-disabled=\"false\"/>", render(div([ariaDisabled(false)], [])))
    XCTAssertEqual("<div aria-disabled=\"true\"/>", render(div([ariaDisabled(true)], [])))

    XCTAssertEqual("<div aria-dropeffect=\"copy\"/>", render(div([ariaDropeffect(.copy)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"execute\"/>", render(div([ariaDropeffect(.execute)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"link\"/>", render(div([ariaDropeffect(.link)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"move\"/>", render(div([ariaDropeffect(.move)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"none\"/>", render(div([ariaDropeffect(.none)], [])))
    XCTAssertEqual("<div aria-dropeffect=\"popup\"/>", render(div([ariaDropeffect(.popup)], [])))

    XCTAssertEqual("<div aria-errormessage=\"error!\"/>", render(div([ariaErrormessage("error!")], [])))

    XCTAssertEqual("<div aria-expanded=\"false\"/>", render(div([ariaExpanded(.false)], [])))
    XCTAssertEqual("<div aria-expanded=\"true\"/>", render(div([ariaExpanded(.true)], [])))
    XCTAssertEqual("<div aria-expanded=\"undefined\"/>", render(div([ariaExpanded(.undefined)], [])))
    XCTAssertEqual("<div aria-expanded=\"false\"/>", render(div([ariaExpanded(false)], [])))
    XCTAssertEqual("<div aria-expanded=\"true\"/>", render(div([ariaExpanded(true)], [])))

    XCTAssertEqual("<div aria-flowto=\"id\"/>", render(div([ariaFlowto("id")], [])))

    XCTAssertEqual("<div aria-grabbed=\"false\"/>", render(div([ariaGrabbed(.false)], [])))
    XCTAssertEqual("<div aria-grabbed=\"true\"/>", render(div([ariaGrabbed(.true)], [])))
    XCTAssertEqual("<div aria-grabbed=\"undefined\"/>", render(div([ariaGrabbed(.undefined)], [])))
    XCTAssertEqual("<div aria-grabbed=\"false\"/>", render(div([ariaGrabbed(false)], [])))
    XCTAssertEqual("<div aria-grabbed=\"true\"/>", render(div([ariaGrabbed(true)], [])))

    XCTAssertEqual("<div aria-haspopup=\"dialog\"/>", render(div([ariaHaspopup(.dialog)], [])))
    XCTAssertEqual("<div aria-haspopup=\"false\"/>", render(div([ariaHaspopup(.false)], [])))
    XCTAssertEqual("<div aria-haspopup=\"grid\"/>", render(div([ariaHaspopup(.grid)], [])))
    XCTAssertEqual("<div aria-haspopup=\"listbox\"/>", render(div([ariaHaspopup(.listbox)], [])))
    XCTAssertEqual("<div aria-haspopup=\"menu\"/>", render(div([ariaHaspopup(.menu)], [])))
    XCTAssertEqual("<div aria-haspopup=\"tree\"/>", render(div([ariaHaspopup(.tree)], [])))
    XCTAssertEqual("<div aria-haspopup=\"false\"/>", render(div([ariaHaspopup(false)], [])))
    XCTAssertEqual("<div aria-haspopup=\"menu\"/>", render(div([ariaHaspopup(true)], [])))

    XCTAssertEqual("<div aria-hidden=\"false\"/>", render(div([ariaHidden(.false)], [])))
    XCTAssertEqual("<div aria-hidden=\"true\"/>", render(div([ariaHidden(.true)], [])))
    XCTAssertEqual("<div aria-hidden=\"undefined\"/>", render(div([ariaHidden(.undefined)], [])))
    XCTAssertEqual("<div aria-hidden=\"false\"/>", render(div([ariaHidden(false)], [])))
    XCTAssertEqual("<div aria-hidden=\"true\"/>", render(div([ariaHidden(true)], [])))

    XCTAssertEqual("<div aria-invalid=\"false\"/>", render(div([ariaInvalid(.false)], [])))
    XCTAssertEqual("<div aria-invalid=\"grammar\"/>", render(div([ariaInvalid(.grammar)], [])))
    XCTAssertEqual("<div aria-invalid=\"spelling\"/>", render(div([ariaInvalid(.spelling)], [])))
    XCTAssertEqual("<div aria-invalid=\"true\"/>", render(div([ariaInvalid(.true)], [])))
    XCTAssertEqual("<div aria-invalid=\"false\"/>", render(div([ariaInvalid(false)], [])))
    XCTAssertEqual("<div aria-invalid=\"true\"/>", render(div([ariaInvalid(true)], [])))

    XCTAssertEqual("<div aria-keyshortcuts=\"id\"/>", render(div([ariaKeyshortcuts("id")], [])))

    XCTAssertEqual("<div aria-label=\"id\"/>", render(div([ariaLabel("id")], [])))

    XCTAssertEqual("<div aria-labelledby=\"id\"/>", render(div([ariaLabelledby("id")], [])))

    XCTAssertEqual("<div aria-level=\"2\"/>", render(div([ariaLevel(2)], [])))

    XCTAssertEqual("<div aria-live=\"assertive\"/>", render(div([ariaLive(.assertive)], [])))
    XCTAssertEqual("<div aria-live=\"off\"/>", render(div([ariaLive(.off)], [])))
    XCTAssertEqual("<div aria-live=\"polite\"/>", render(div([ariaLive(.polite)], [])))

    XCTAssertEqual("<div aria-modal=\"false\"/>", render(div([ariaModal(false)], [])))
    XCTAssertEqual("<div aria-modal=\"true\"/>", render(div([ariaModal(true)], [])))

    XCTAssertEqual("<div aria-multiline=\"false\"/>", render(div([ariaMultiline(false)], [])))
    XCTAssertEqual("<div aria-multiline=\"true\"/>", render(div([ariaMultiline(true)], [])))

    XCTAssertEqual("<div aria-multiselectable=\"false\"/>", render(div([ariaMultiselectable(false)], [])))
    XCTAssertEqual("<div aria-multiselectable=\"true\"/>", render(div([ariaMultiselectable(true)], [])))

    XCTAssertEqual("<div aria-orientation=\"horizontal\"/>", render(div([ariaOrientation(.horizontal)], [])))
    XCTAssertEqual("<div aria-orientation=\"undefined\"/>", render(div([ariaOrientation(.undefined)], [])))
    XCTAssertEqual("<div aria-orientation=\"vertical\"/>", render(div([ariaOrientation(.vertical)], [])))

    XCTAssertEqual("<div aria-owns=\"id\"/>", render(div([ariaOwns("id")], [])))

    XCTAssertEqual("<div aria-placeholder=\"id\"/>", render(div([ariaPlaceholder("id")], [])))

    XCTAssertEqual("<div aria-posinset=\"2\"/>", render(div([ariaPosinset(2)], [])))

    XCTAssertEqual("<div aria-pressed=\"false\"/>", render(div([ariaPressed(.false)], [])))
    XCTAssertEqual("<div aria-pressed=\"mixed\"/>", render(div([ariaPressed(.mixed)], [])))
    XCTAssertEqual("<div aria-pressed=\"true\"/>", render(div([ariaPressed(.true)], [])))
    XCTAssertEqual("<div aria-pressed=\"undefined\"/>", render(div([ariaPressed(.undefined)], [])))
    XCTAssertEqual("<div aria-pressed=\"false\"/>", render(div([ariaPressed(false)], [])))
    XCTAssertEqual("<div aria-pressed=\"true\"/>", render(div([ariaPressed(true)], [])))

    XCTAssertEqual("<div aria-readonly=\"false\"/>", render(div([ariaReadonly(false)], [])))
    XCTAssertEqual("<div aria-readonly=\"true\"/>", render(div([ariaReadonly(true)], [])))

    XCTAssertEqual("<div aria-relevant/>", render(div([ariaRelevant([])], [])))
    XCTAssertEqual("<div aria-relevant=\"all\"/>", render(div([ariaRelevant([.all])], [])))
    XCTAssertEqual("<div aria-relevant=\"additions removals\"/>", render(div([ariaRelevant([.additions, .removals])], [])))

    XCTAssertEqual("<div aria-required=\"false\"/>", render(div([ariaRequired(false)], [])))
    XCTAssertEqual("<div aria-required=\"true\"/>", render(div([ariaRequired(true)], [])))

    XCTAssertEqual("<div aria-roledescription=\"id\"/>", render(div([ariaRoledescription("id")], [])))

    XCTAssertEqual("<div aria-rowcount=\"2\"/>", render(div([ariaRowcount(2)], [])))

    XCTAssertEqual("<div aria-rowindex=\"2\"/>", render(div([ariaRowindex(2)], [])))

    XCTAssertEqual("<div aria-rowspan=\"2\"/>", render(div([ariaRowspan(2)], [])))

    XCTAssertEqual("<div aria-selected=\"false\"/>", render(div([ariaSelected(.false)], [])))
    XCTAssertEqual("<div aria-selected=\"true\"/>", render(div([ariaSelected(.true)], [])))
    XCTAssertEqual("<div aria-selected=\"undefined\"/>", render(div([ariaSelected(.undefined)], [])))
    XCTAssertEqual("<div aria-selected=\"false\"/>", render(div([ariaSelected(false)], [])))
    XCTAssertEqual("<div aria-selected=\"true\"/>", render(div([ariaSelected(true)], [])))

    XCTAssertEqual("<div aria-rowspan=\"2\"/>", render(div([ariaRowspan(2)], [])))

    XCTAssertEqual("<div aria-setsize=\"2\"/>", render(div([ariaSetsize(2)], [])))

    XCTAssertEqual("<div aria-sort=\"ascending\"/>", render(div([ariaSort(.ascending)], [])))
    XCTAssertEqual("<div aria-sort=\"descending\"/>", render(div([ariaSort(.descending)], [])))
    XCTAssertEqual("<div aria-sort=\"none\"/>", render(div([ariaSort(.none)], [])))
    XCTAssertEqual("<div aria-sort=\"other\"/>", render(div([ariaSort(.other)], [])))

    XCTAssertEqual("<div aria-valuemax=\"1.2\"/>", render(div([ariaValuemax(1.2)], [])))

    XCTAssertEqual("<div aria-valuemin=\"1.2\"/>", render(div([ariaValuemin(1.2)], [])))

    XCTAssertEqual("<div aria-valuenow=\"1.2\"/>", render(div([ariaValuenow(1.2)], [])))

    XCTAssertEqual("<div aria-valuetext=\"1.2\"/>", render(div([ariaValuetext("1.2")], [])))

    XCTAssertEqual("<div role=\"alert\"/>", render(div([role(.alert)], [])))
    XCTAssertEqual("<div role=\"alertdialog\"/>", render(div([role(.alertdialog)], [])))
    XCTAssertEqual("<div role=\"application\"/>", render(div([role(.application)], [])))
    XCTAssertEqual("<div role=\"article\"/>", render(div([role(.article)], [])))
    XCTAssertEqual("<div role=\"banner\"/>", render(div([role(.banner)], [])))
    XCTAssertEqual("<div role=\"button\"/>", render(div([role(.button)], [])))
    XCTAssertEqual("<div role=\"cell\"/>", render(div([role(.cell)], [])))
    XCTAssertEqual("<div role=\"checkbox\"/>", render(div([role(.checkbox)], [])))
    XCTAssertEqual("<div role=\"columnheader\"/>", render(div([role(.columnheader)], [])))
    XCTAssertEqual("<div role=\"combobox\"/>", render(div([role(.combobox)], [])))
    XCTAssertEqual("<div role=\"complementary\"/>", render(div([role(.complementary)], [])))
    XCTAssertEqual("<div role=\"contentinfo\"/>", render(div([role(.contentinfo)], [])))
    XCTAssertEqual("<div role=\"definition\"/>", render(div([role(.definition)], [])))
    XCTAssertEqual("<div role=\"dialog\"/>", render(div([role(.dialog)], [])))
    XCTAssertEqual("<div role=\"directory\"/>", render(div([role(.directory)], [])))
    XCTAssertEqual("<div role=\"document\"/>", render(div([role(.document)], [])))
    XCTAssertEqual("<div role=\"feed\"/>", render(div([role(.feed)], [])))
    XCTAssertEqual("<div role=\"figure\"/>", render(div([role(.figure)], [])))
    XCTAssertEqual("<div role=\"form\"/>", render(div([role(.form)], [])))
    XCTAssertEqual("<div role=\"grid\"/>", render(div([role(.grid)], [])))
    XCTAssertEqual("<div role=\"gridcell\"/>", render(div([role(.gridcell)], [])))
    XCTAssertEqual("<div role=\"group\"/>", render(div([role(.group)], [])))
    XCTAssertEqual("<div role=\"heading\"/>", render(div([role(.heading)], [])))
    XCTAssertEqual("<div role=\"img\"/>", render(div([role(.img)], [])))
    XCTAssertEqual("<div role=\"link\"/>", render(div([role(.link)], [])))
    XCTAssertEqual("<div role=\"list\"/>", render(div([role(.list)], [])))
    XCTAssertEqual("<div role=\"listbox\"/>", render(div([role(.listbox)], [])))
    XCTAssertEqual("<div role=\"listitem\"/>", render(div([role(.listitem)], [])))
    XCTAssertEqual("<div role=\"log\"/>", render(div([role(.log)], [])))
    XCTAssertEqual("<div role=\"main\"/>", render(div([role(.main)], [])))
    XCTAssertEqual("<div role=\"marquee\"/>", render(div([role(.marquee)], [])))
    XCTAssertEqual("<div role=\"math\"/>", render(div([role(.math)], [])))
    XCTAssertEqual("<div role=\"menu\"/>", render(div([role(.menu)], [])))
    XCTAssertEqual("<div role=\"menubar\"/>", render(div([role(.menubar)], [])))
    XCTAssertEqual("<div role=\"menuitem\"/>", render(div([role(.menuitem)], [])))
    XCTAssertEqual("<div role=\"menuitemcheckbox\"/>", render(div([role(.menuitemcheckbox)], [])))
    XCTAssertEqual("<div role=\"menuitemradio\"/>", render(div([role(.menuitemradio)], [])))
    XCTAssertEqual("<div role=\"navigation\"/>", render(div([role(.navigation)], [])))
    XCTAssertEqual("<div role=\"none\"/>", render(div([role(.none)], [])))
    XCTAssertEqual("<div role=\"note\"/>", render(div([role(.note)], [])))
    XCTAssertEqual("<div role=\"option\"/>", render(div([role(.option)], [])))
    XCTAssertEqual("<div role=\"presentation\"/>", render(div([role(.presentation)], [])))
    XCTAssertEqual("<div role=\"progressbar\"/>", render(div([role(.progressbar)], [])))
    XCTAssertEqual("<div role=\"radio\"/>", render(div([role(.radio)], [])))
    XCTAssertEqual("<div role=\"radiogroup\"/>", render(div([role(.radiogroup)], [])))
    XCTAssertEqual("<div role=\"region\"/>", render(div([role(.region)], [])))
    XCTAssertEqual("<div role=\"row\"/>", render(div([role(.row)], [])))
    XCTAssertEqual("<div role=\"rowgroup\"/>", render(div([role(.rowgroup)], [])))
    XCTAssertEqual("<div role=\"rowheader\"/>", render(div([role(.rowheader)], [])))
    XCTAssertEqual("<div role=\"scrollbar\"/>", render(div([role(.scrollbar)], [])))
    XCTAssertEqual("<div role=\"search\"/>", render(div([role(.search)], [])))
    XCTAssertEqual("<div role=\"searchbox\"/>", render(div([role(.searchbox)], [])))
    XCTAssertEqual("<div role=\"separator\"/>", render(div([role(.separator)], [])))
    XCTAssertEqual("<div role=\"slider\"/>", render(div([role(.slider)], [])))
    XCTAssertEqual("<div role=\"spinbutton\"/>", render(div([role(.spinbutton)], [])))
    XCTAssertEqual("<div role=\"status\"/>", render(div([role(.status)], [])))
    XCTAssertEqual("<div role=\"switch\"/>", render(div([role(.switch)], [])))
    XCTAssertEqual("<div role=\"tab\"/>", render(div([role(.tab)], [])))
    XCTAssertEqual("<div role=\"table\"/>", render(div([role(.table)], [])))
    XCTAssertEqual("<div role=\"tablist\"/>", render(div([role(.tablist)], [])))
    XCTAssertEqual("<div role=\"tabpanel\"/>", render(div([role(.tabpanel)], [])))
    XCTAssertEqual("<div role=\"term\"/>", render(div([role(.term)], [])))
    XCTAssertEqual("<div role=\"textbox\"/>", render(div([role(.textbox)], [])))
    XCTAssertEqual("<div role=\"timer\"/>", render(div([role(.timer)], [])))
    XCTAssertEqual("<div role=\"toolbar\"/>", render(div([role(.toolbar)], [])))
    XCTAssertEqual("<div role=\"tooltip\"/>", render(div([role(.tooltip)], [])))
    XCTAssertEqual("<div role=\"tree\"/>", render(div([role(.tree)], [])))
    XCTAssertEqual("<div role=\"treegrid\"/>", render(div([role(.treegrid)], [])))
    XCTAssertEqual("<div role=\"treeitem\"/>", render(div([role(.treeitem)], [])))
  }
}

