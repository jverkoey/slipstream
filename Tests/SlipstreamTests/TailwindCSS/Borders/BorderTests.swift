import Testing
import Slipstream

struct BorderTests {
  @Test func widths() throws {
    try #expect(renderHTML(Div {}.border(.black, width: 0)) == #"<div class="border-0 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 1)) == #"<div class="border border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 2)) == #"<div class="border-2 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 3)) == #"<div class="border-2 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 4)) == #"<div class="border-4 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 5)) == #"<div class="border-4 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 6)) == #"<div class="border-4 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 7)) == #"<div class="border-8 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 8)) == #"<div class="border-8 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 9)) == #"<div class="border-8 border-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, width: 10)) == #"<div class="border-8 border-black"></div>"#)
  }

  @Test func edges() throws {
    try #expect(renderHTML(Div {}.border(.black, edges: .top)) == #"<div class="border-t border-t-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.white, edges: .right)) == #"<div class="border-r border-r-white"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, edges: .bottom)) == #"<div class="border-b border-b-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, edges: .left)) == #"<div class="border-l border-l-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, edges: .horizontal)) == #"<div class="border-x border-x-black"></div>"#)
    try #expect(renderHTML(Div {}.border(.black, edges: .vertical)) == #"<div class="border-y border-y-black"></div>"#)
  }
}
