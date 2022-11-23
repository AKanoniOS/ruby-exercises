require './cipher.rb'

describe "#translate" do
  it "translates text into a concealed message" do
    string = "Hello, my name is Steve."
    expect(translate(string,3)).to eql("Khoor, pb qdph lv Vwhyh.")
  end
  it "works with negative numbers" do
    string = "It works with negative numbers."
    expect(translate(string,-4)).to eql("Ep skngo sepd jacwpera jqixano.")
  end
  it "works with really big numbers" do
    string = "I have to return some videotapes."
    expect(translate(string,45678)).to eql("E dwra pk napqnj okia rezakpwlao.")
  end
end