import Html
import XCTest

final class AriaTests: XCTestCase {
  func testAriaAttributes() {
    XCTAssertEqual(
      "<div aria-activedescendant=\"id\"></div>",
      render(.div(attributes: [.ariaActivedescendant("id")])))

    XCTAssertEqual(
      "<div aria-atomic=\"true\"></div>", render(.div(attributes: [.ariaAtomic(true)])))
    XCTAssertEqual(
      "<div aria-atomic=\"false\"></div>", render(.div(attributes: [.ariaAtomic(false)])))

    XCTAssertEqual(
      "<div aria-autocomplete=\"both\"></div>", render(.div(attributes: [.ariaAutocomplete(.both)]))
    )
    XCTAssertEqual(
      "<div aria-autocomplete=\"inline\"></div>",
      render(.div(attributes: [.ariaAutocomplete(.inline)])))
    XCTAssertEqual(
      "<div aria-autocomplete=\"list\"></div>", render(.div(attributes: [.ariaAutocomplete(.list)]))
    )
    XCTAssertEqual(
      "<div aria-autocomplete=\"none\"></div>", render(.div(attributes: [.ariaAutocomplete(.none)]))
    )

    XCTAssertEqual("<div aria-busy=\"true\"></div>", render(.div(attributes: [.ariaBusy(true)])))
    XCTAssertEqual("<div aria-busy=\"false\"></div>", render(.div(attributes: [.ariaBusy(false)])))

    XCTAssertEqual(
      "<div aria-checked=\"false\"></div>", render(.div(attributes: [.ariaChecked(.false)])))
    XCTAssertEqual(
      "<div aria-checked=\"mixed\"></div>", render(.div(attributes: [.ariaChecked(.mixed)])))
    XCTAssertEqual(
      "<div aria-checked=\"true\"></div>", render(.div(attributes: [.ariaChecked(.true)])))
    XCTAssertEqual(
      "<div aria-checked=\"undefined\"></div>", render(.div(attributes: [.ariaChecked(.undefined)]))
    )
    XCTAssertEqual(
      "<div aria-checked=\"false\"></div>", render(.div(attributes: [.ariaChecked(false)])))
    XCTAssertEqual(
      "<div aria-checked=\"true\"></div>", render(.div(attributes: [.ariaChecked(true)])))

    XCTAssertEqual("<div aria-colcount=\"2\"></div>", render(.div(attributes: [.ariaColcount(2)])))

    XCTAssertEqual("<div aria-colindex=\"2\"></div>", render(.div(attributes: [.ariaColindex(2)])))

    XCTAssertEqual("<div aria-colspan=\"2\"></div>", render(.div(attributes: [.ariaColspan(2)])))

    XCTAssertEqual(
      "<div aria-controls=\"id\"></div>", render(.div(attributes: [.ariaControls("id")])))

    XCTAssertEqual(
      "<div aria-current=\"date\"></div>", render(.div(attributes: [.ariaCurrent(.date)])))
    XCTAssertEqual(
      "<div aria-current=\"false\"></div>", render(.div(attributes: [.ariaCurrent(.false)])))
    XCTAssertEqual(
      "<div aria-current=\"location\"></div>", render(.div(attributes: [.ariaCurrent(.location)])))
    XCTAssertEqual(
      "<div aria-current=\"page\"></div>", render(.div(attributes: [.ariaCurrent(.page)])))
    XCTAssertEqual(
      "<div aria-current=\"step\"></div>", render(.div(attributes: [.ariaCurrent(.step)])))
    XCTAssertEqual(
      "<div aria-current=\"time\"></div>", render(.div(attributes: [.ariaCurrent(.time)])))
    XCTAssertEqual(
      "<div aria-current=\"true\"></div>", render(.div(attributes: [.ariaCurrent(.true)])))
    XCTAssertEqual(
      "<div aria-current=\"false\"></div>", render(.div(attributes: [.ariaCurrent(false)])))
    XCTAssertEqual(
      "<div aria-current=\"true\"></div>", render(.div(attributes: [.ariaCurrent(true)])))

    XCTAssertEqual(
      "<div aria-describedby=\"id\"></div>", render(.div(attributes: [.ariaDescribedby("id")])))

    XCTAssertEqual(
      "<div aria-details=\"id\"></div>", render(.div(attributes: [.ariaDetails("id")])))

    XCTAssertEqual(
      "<div aria-disabled=\"false\"></div>", render(.div(attributes: [.ariaDisabled(false)])))
    XCTAssertEqual(
      "<div aria-disabled=\"true\"></div>", render(.div(attributes: [.ariaDisabled(true)])))

    XCTAssertEqual(
      "<div aria-dropeffect=\"copy\"></div>", render(.div(attributes: [.ariaDropeffect(.copy)])))
    XCTAssertEqual(
      "<div aria-dropeffect=\"execute\"></div>",
      render(.div(attributes: [.ariaDropeffect(.execute)])))
    XCTAssertEqual(
      "<div aria-dropeffect=\"link\"></div>", render(.div(attributes: [.ariaDropeffect(.link)])))
    XCTAssertEqual(
      "<div aria-dropeffect=\"move\"></div>", render(.div(attributes: [.ariaDropeffect(.move)])))
    XCTAssertEqual(
      "<div aria-dropeffect=\"none\"></div>", render(.div(attributes: [.ariaDropeffect(.none)])))
    XCTAssertEqual(
      "<div aria-dropeffect=\"popup\"></div>", render(.div(attributes: [.ariaDropeffect(.popup)])))

    XCTAssertEqual(
      "<div aria-errormessage=\"error!\"></div>",
      render(.div(attributes: [.ariaErrormessage("error!")])))

    XCTAssertEqual(
      "<div aria-expanded=\"false\"></div>", render(.div(attributes: [.ariaExpanded(.false)])))
    XCTAssertEqual(
      "<div aria-expanded=\"true\"></div>", render(.div(attributes: [.ariaExpanded(.true)])))
    XCTAssertEqual(
      "<div aria-expanded=\"undefined\"></div>",
      render(.div(attributes: [.ariaExpanded(.undefined)])))
    XCTAssertEqual(
      "<div aria-expanded=\"false\"></div>", render(.div(attributes: [.ariaExpanded(false)])))
    XCTAssertEqual(
      "<div aria-expanded=\"true\"></div>", render(.div(attributes: [.ariaExpanded(true)])))

    XCTAssertEqual("<div aria-flowto=\"id\"></div>", render(.div(attributes: [.ariaFlowto("id")])))

    XCTAssertEqual(
      "<div aria-grabbed=\"false\"></div>", render(.div(attributes: [.ariaGrabbed(.false)])))
    XCTAssertEqual(
      "<div aria-grabbed=\"true\"></div>", render(.div(attributes: [.ariaGrabbed(.true)])))
    XCTAssertEqual(
      "<div aria-grabbed=\"undefined\"></div>", render(.div(attributes: [.ariaGrabbed(.undefined)]))
    )
    XCTAssertEqual(
      "<div aria-grabbed=\"false\"></div>", render(.div(attributes: [.ariaGrabbed(false)])))
    XCTAssertEqual(
      "<div aria-grabbed=\"true\"></div>", render(.div(attributes: [.ariaGrabbed(true)])))

    XCTAssertEqual(
      "<div aria-haspopup=\"dialog\"></div>", render(.div(attributes: [.ariaHaspopup(.dialog)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"false\"></div>", render(.div(attributes: [.ariaHaspopup(.false)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"grid\"></div>", render(.div(attributes: [.ariaHaspopup(.grid)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"listbox\"></div>", render(.div(attributes: [.ariaHaspopup(.listbox)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"menu\"></div>", render(.div(attributes: [.ariaHaspopup(.menu)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"tree\"></div>", render(.div(attributes: [.ariaHaspopup(.tree)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"false\"></div>", render(.div(attributes: [.ariaHaspopup(false)])))
    XCTAssertEqual(
      "<div aria-haspopup=\"menu\"></div>", render(.div(attributes: [.ariaHaspopup(true)])))

    XCTAssertEqual(
      "<div aria-hidden=\"false\"></div>", render(.div(attributes: [.ariaHidden(.false)])))
    XCTAssertEqual(
      "<div aria-hidden=\"true\"></div>", render(.div(attributes: [.ariaHidden(.true)])))
    XCTAssertEqual(
      "<div aria-hidden=\"undefined\"></div>", render(.div(attributes: [.ariaHidden(.undefined)])))
    XCTAssertEqual(
      "<div aria-hidden=\"false\"></div>", render(.div(attributes: [.ariaHidden(false)])))
    XCTAssertEqual(
      "<div aria-hidden=\"true\"></div>", render(.div(attributes: [.ariaHidden(true)])))

    XCTAssertEqual(
      "<div aria-invalid=\"false\"></div>", render(.div(attributes: [.ariaInvalid(.false)])))
    XCTAssertEqual(
      "<div aria-invalid=\"grammar\"></div>", render(.div(attributes: [.ariaInvalid(.grammar)])))
    XCTAssertEqual(
      "<div aria-invalid=\"spelling\"></div>", render(.div(attributes: [.ariaInvalid(.spelling)])))
    XCTAssertEqual(
      "<div aria-invalid=\"true\"></div>", render(.div(attributes: [.ariaInvalid(.true)])))
    XCTAssertEqual(
      "<div aria-invalid=\"false\"></div>", render(.div(attributes: [.ariaInvalid(false)])))
    XCTAssertEqual(
      "<div aria-invalid=\"true\"></div>", render(.div(attributes: [.ariaInvalid(true)])))

    XCTAssertEqual(
      "<div aria-keyshortcuts=\"id\"></div>", render(.div(attributes: [.ariaKeyshortcuts("id")])))

    XCTAssertEqual("<div aria-label=\"id\"></div>", render(.div(attributes: [.ariaLabel("id")])))

    XCTAssertEqual(
      "<div aria-labelledby=\"id\"></div>", render(.div(attributes: [.ariaLabelledby("id")])))

    XCTAssertEqual("<div aria-level=\"2\"></div>", render(.div(attributes: [.ariaLevel(2)])))

    XCTAssertEqual(
      "<div aria-live=\"assertive\"></div>", render(.div(attributes: [.ariaLive(.assertive)])))
    XCTAssertEqual("<div aria-live=\"off\"></div>", render(.div(attributes: [.ariaLive(.off)])))
    XCTAssertEqual(
      "<div aria-live=\"polite\"></div>", render(.div(attributes: [.ariaLive(.polite)])))

    XCTAssertEqual(
      "<div aria-modal=\"false\"></div>", render(.div(attributes: [.ariaModal(false)])))
    XCTAssertEqual("<div aria-modal=\"true\"></div>", render(.div(attributes: [.ariaModal(true)])))

    XCTAssertEqual(
      "<div aria-multiline=\"false\"></div>", render(.div(attributes: [.ariaMultiline(false)])))
    XCTAssertEqual(
      "<div aria-multiline=\"true\"></div>", render(.div(attributes: [.ariaMultiline(true)])))

    XCTAssertEqual(
      "<div aria-multiselectable=\"false\"></div>",
      render(.div(attributes: [.ariaMultiselectable(false)])))
    XCTAssertEqual(
      "<div aria-multiselectable=\"true\"></div>",
      render(.div(attributes: [.ariaMultiselectable(true)])))

    XCTAssertEqual(
      "<div aria-orientation=\"horizontal\"></div>",
      render(.div(attributes: [.ariaOrientation(.horizontal)])))
    XCTAssertEqual(
      "<div aria-orientation=\"undefined\"></div>",
      render(.div(attributes: [.ariaOrientation(.undefined)])))
    XCTAssertEqual(
      "<div aria-orientation=\"vertical\"></div>",
      render(.div(attributes: [.ariaOrientation(.vertical)])))

    XCTAssertEqual("<div aria-owns=\"id\"></div>", render(.div(attributes: [.ariaOwns("id")])))

    XCTAssertEqual(
      "<div aria-placeholder=\"id\"></div>", render(.div(attributes: [.ariaPlaceholder("id")])))

    XCTAssertEqual("<div aria-posinset=\"2\"></div>", render(.div(attributes: [.ariaPosinset(2)])))

    XCTAssertEqual(
      "<div aria-pressed=\"false\"></div>", render(.div(attributes: [.ariaPressed(.false)])))
    XCTAssertEqual(
      "<div aria-pressed=\"mixed\"></div>", render(.div(attributes: [.ariaPressed(.mixed)])))
    XCTAssertEqual(
      "<div aria-pressed=\"true\"></div>", render(.div(attributes: [.ariaPressed(.true)])))
    XCTAssertEqual(
      "<div aria-pressed=\"undefined\"></div>", render(.div(attributes: [.ariaPressed(.undefined)]))
    )
    XCTAssertEqual(
      "<div aria-pressed=\"false\"></div>", render(.div(attributes: [.ariaPressed(false)])))
    XCTAssertEqual(
      "<div aria-pressed=\"true\"></div>", render(.div(attributes: [.ariaPressed(true)])))

    XCTAssertEqual(
      "<div aria-readonly=\"false\"></div>", render(.div(attributes: [.ariaReadonly(false)])))
    XCTAssertEqual(
      "<div aria-readonly=\"true\"></div>", render(.div(attributes: [.ariaReadonly(true)])))

    XCTAssertEqual("<div aria-relevant></div>", render(.div(attributes: [.ariaRelevant([])])))
    XCTAssertEqual(
      "<div aria-relevant=\"all\"></div>", render(.div(attributes: [.ariaRelevant([.all])])))
    XCTAssertEqual(
      "<div aria-relevant=\"additions removals\"></div>",
      render(.div(attributes: [.ariaRelevant([.additions, .removals])])))

    XCTAssertEqual(
      "<div aria-required=\"false\"></div>", render(.div(attributes: [.ariaRequired(false)])))
    XCTAssertEqual(
      "<div aria-required=\"true\"></div>", render(.div(attributes: [.ariaRequired(true)])))

    XCTAssertEqual(
      "<div aria-roledescription=\"id\"></div>",
      render(.div(attributes: [.ariaRoledescription("id")])))

    XCTAssertEqual("<div aria-rowcount=\"2\"></div>", render(.div(attributes: [.ariaRowcount(2)])))

    XCTAssertEqual("<div aria-rowindex=\"2\"></div>", render(.div(attributes: [.ariaRowindex(2)])))

    XCTAssertEqual("<div aria-rowspan=\"2\"></div>", render(.div(attributes: [.ariaRowspan(2)])))

    XCTAssertEqual(
      "<div aria-selected=\"false\"></div>", render(.div(attributes: [.ariaSelected(.false)])))
    XCTAssertEqual(
      "<div aria-selected=\"true\"></div>", render(.div(attributes: [.ariaSelected(.true)])))
    XCTAssertEqual(
      "<div aria-selected=\"undefined\"></div>",
      render(.div(attributes: [.ariaSelected(.undefined)])))
    XCTAssertEqual(
      "<div aria-selected=\"false\"></div>", render(.div(attributes: [.ariaSelected(false)])))
    XCTAssertEqual(
      "<div aria-selected=\"true\"></div>", render(.div(attributes: [.ariaSelected(true)])))

    XCTAssertEqual("<div aria-rowspan=\"2\"></div>", render(.div(attributes: [.ariaRowspan(2)])))

    XCTAssertEqual("<div aria-setsize=\"2\"></div>", render(.div(attributes: [.ariaSetsize(2)])))

    XCTAssertEqual(
      "<div aria-sort=\"ascending\"></div>", render(.div(attributes: [.ariaSort(.ascending)])))
    XCTAssertEqual(
      "<div aria-sort=\"descending\"></div>", render(.div(attributes: [.ariaSort(.descending)])))
    XCTAssertEqual("<div aria-sort=\"none\"></div>", render(.div(attributes: [.ariaSort(.none)])))
    XCTAssertEqual("<div aria-sort=\"other\"></div>", render(.div(attributes: [.ariaSort(.other)])))

    XCTAssertEqual(
      "<div aria-valuemax=\"1.2\"></div>", render(.div(attributes: [.ariaValuemax(1.2)])))

    XCTAssertEqual(
      "<div aria-valuemin=\"1.2\"></div>", render(.div(attributes: [.ariaValuemin(1.2)])))

    XCTAssertEqual(
      "<div aria-valuenow=\"1.2\"></div>", render(.div(attributes: [.ariaValuenow(1.2)])))

    XCTAssertEqual(
      "<div aria-valuetext=\"1.2\"></div>", render(.div(attributes: [.ariaValuetext("1.2")])))

    XCTAssertEqual("<div role=\"alert\"></div>", render(.div(attributes: [.role(.alert)])))
    XCTAssertEqual(
      "<div role=\"alertdialog\"></div>", render(.div(attributes: [.role(.alertdialog)])))
    XCTAssertEqual(
      "<div role=\"application\"></div>", render(.div(attributes: [.role(.application)])))
    XCTAssertEqual("<div role=\"article\"></div>", render(.div(attributes: [.role(.article)])))
    XCTAssertEqual("<div role=\"banner\"></div>", render(.div(attributes: [.role(.banner)])))
    XCTAssertEqual("<div role=\"button\"></div>", render(.div(attributes: [.role(.button)])))
    XCTAssertEqual("<div role=\"cell\"></div>", render(.div(attributes: [.role(.cell)])))
    XCTAssertEqual("<div role=\"checkbox\"></div>", render(.div(attributes: [.role(.checkbox)])))
    XCTAssertEqual(
      "<div role=\"columnheader\"></div>", render(.div(attributes: [.role(.columnheader)])))
    XCTAssertEqual("<div role=\"combobox\"></div>", render(.div(attributes: [.role(.combobox)])))
    XCTAssertEqual(
      "<div role=\"complementary\"></div>", render(.div(attributes: [.role(.complementary)])))
    XCTAssertEqual(
      "<div role=\"contentinfo\"></div>", render(.div(attributes: [.role(.contentinfo)])))
    XCTAssertEqual(
      "<div role=\"definition\"></div>", render(.div(attributes: [.role(.definition)])))
    XCTAssertEqual("<div role=\"dialog\"></div>", render(.div(attributes: [.role(.dialog)])))
    XCTAssertEqual("<div role=\"directory\"></div>", render(.div(attributes: [.role(.directory)])))
    XCTAssertEqual("<div role=\"document\"></div>", render(.div(attributes: [.role(.document)])))
    XCTAssertEqual("<div role=\"feed\"></div>", render(.div(attributes: [.role(.feed)])))
    XCTAssertEqual("<div role=\"figure\"></div>", render(.div(attributes: [.role(.figure)])))
    XCTAssertEqual("<div role=\"form\"></div>", render(.div(attributes: [.role(.form)])))
    XCTAssertEqual("<div role=\"grid\"></div>", render(.div(attributes: [.role(.grid)])))
    XCTAssertEqual("<div role=\"gridcell\"></div>", render(.div(attributes: [.role(.gridcell)])))
    XCTAssertEqual("<div role=\"group\"></div>", render(.div(attributes: [.role(.group)])))
    XCTAssertEqual("<div role=\"heading\"></div>", render(.div(attributes: [.role(.heading)])))
    XCTAssertEqual("<div role=\"img\"></div>", render(.div(attributes: [.role(.img)])))
    XCTAssertEqual("<div role=\"link\"></div>", render(.div(attributes: [.role(.link)])))
    XCTAssertEqual("<div role=\"list\"></div>", render(.div(attributes: [.role(.list)])))
    XCTAssertEqual("<div role=\"listbox\"></div>", render(.div(attributes: [.role(.listbox)])))
    XCTAssertEqual("<div role=\"listitem\"></div>", render(.div(attributes: [.role(.listitem)])))
    XCTAssertEqual("<div role=\"log\"></div>", render(.div(attributes: [.role(.log)])))
    XCTAssertEqual("<div role=\"main\"></div>", render(.div(attributes: [.role(.main)])))
    XCTAssertEqual("<div role=\"marquee\"></div>", render(.div(attributes: [.role(.marquee)])))
    XCTAssertEqual("<div role=\"math\"></div>", render(.div(attributes: [.role(.math)])))
    XCTAssertEqual("<div role=\"menu\"></div>", render(.div(attributes: [.role(.menu)])))
    XCTAssertEqual("<div role=\"menubar\"></div>", render(.div(attributes: [.role(.menubar)])))
    XCTAssertEqual("<div role=\"menuitem\"></div>", render(.div(attributes: [.role(.menuitem)])))
    XCTAssertEqual(
      "<div role=\"menuitemcheckbox\"></div>", render(.div(attributes: [.role(.menuitemcheckbox)])))
    XCTAssertEqual(
      "<div role=\"menuitemradio\"></div>", render(.div(attributes: [.role(.menuitemradio)])))
    XCTAssertEqual(
      "<div role=\"navigation\"></div>", render(.div(attributes: [.role(.navigation)])))
    XCTAssertEqual("<div role=\"none\"></div>", render(.div(attributes: [.role(.none)])))
    XCTAssertEqual("<div role=\"note\"></div>", render(.div(attributes: [.role(.note)])))
    XCTAssertEqual("<div role=\"option\"></div>", render(.div(attributes: [.role(.option)])))
    XCTAssertEqual(
      "<div role=\"presentation\"></div>", render(.div(attributes: [.role(.presentation)])))
    XCTAssertEqual(
      "<div role=\"progressbar\"></div>", render(.div(attributes: [.role(.progressbar)])))
    XCTAssertEqual("<div role=\"radio\"></div>", render(.div(attributes: [.role(.radio)])))
    XCTAssertEqual(
      "<div role=\"radiogroup\"></div>", render(.div(attributes: [.role(.radiogroup)])))
    XCTAssertEqual("<div role=\"region\"></div>", render(.div(attributes: [.role(.region)])))
    XCTAssertEqual("<div role=\"row\"></div>", render(.div(attributes: [.role(.row)])))
    XCTAssertEqual("<div role=\"rowgroup\"></div>", render(.div(attributes: [.role(.rowgroup)])))
    XCTAssertEqual("<div role=\"rowheader\"></div>", render(.div(attributes: [.role(.rowheader)])))
    XCTAssertEqual("<div role=\"scrollbar\"></div>", render(.div(attributes: [.role(.scrollbar)])))
    XCTAssertEqual("<div role=\"search\"></div>", render(.div(attributes: [.role(.search)])))
    XCTAssertEqual("<div role=\"searchbox\"></div>", render(.div(attributes: [.role(.searchbox)])))
    XCTAssertEqual("<div role=\"separator\"></div>", render(.div(attributes: [.role(.separator)])))
    XCTAssertEqual("<div role=\"slider\"></div>", render(.div(attributes: [.role(.slider)])))
    XCTAssertEqual(
      "<div role=\"spinbutton\"></div>", render(.div(attributes: [.role(.spinbutton)])))
    XCTAssertEqual("<div role=\"status\"></div>", render(.div(attributes: [.role(.status)])))
    XCTAssertEqual("<div role=\"switch\"></div>", render(.div(attributes: [.role(.switch)])))
    XCTAssertEqual("<div role=\"tab\"></div>", render(.div(attributes: [.role(.tab)])))
    XCTAssertEqual("<div role=\"table\"></div>", render(.div(attributes: [.role(.table)])))
    XCTAssertEqual("<div role=\"tablist\"></div>", render(.div(attributes: [.role(.tablist)])))
    XCTAssertEqual("<div role=\"tabpanel\"></div>", render(.div(attributes: [.role(.tabpanel)])))
    XCTAssertEqual("<div role=\"term\"></div>", render(.div(attributes: [.role(.term)])))
    XCTAssertEqual("<div role=\"textbox\"></div>", render(.div(attributes: [.role(.textbox)])))
    XCTAssertEqual("<div role=\"timer\"></div>", render(.div(attributes: [.role(.timer)])))
    XCTAssertEqual("<div role=\"toolbar\"></div>", render(.div(attributes: [.role(.toolbar)])))
    XCTAssertEqual("<div role=\"tooltip\"></div>", render(.div(attributes: [.role(.tooltip)])))
    XCTAssertEqual("<div role=\"tree\"></div>", render(.div(attributes: [.role(.tree)])))
    XCTAssertEqual("<div role=\"treegrid\"></div>", render(.div(attributes: [.role(.treegrid)])))
    XCTAssertEqual("<div role=\"treeitem\"></div>", render(.div(attributes: [.role(.treeitem)])))
  }
}
