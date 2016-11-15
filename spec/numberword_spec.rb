require ('rspec')
require ('numberword')

describe("Fixnum#numberword") do
  it ("returns the word form of a single digit number") do
    expect(1.numberword()).to(eq("one"))
  end
  it ("returns the word form of a double digit number up to 19") do
    expect(13.numberword()).to(eq("thirteen"))
  end
  it ("returns the word form of a number between 20 and 99") do
    expect(25.numberword()).to(eq("twentyfive"))
  end
  it ("returns the word form of a triple digit number") do
    expect(113.numberword()).to(eq("one hundred thirteen"))
  end
  it ("returns the word form of a quadruple digit number") do
    expect(2011.numberword()).to(eq("two thousand eleven"))
  end
  it ("returns the word form of a five digit number") do
    expect(30000.numberword()).to(eq("thirty thousand"))
  end
  it ("returns the word form of a six digit number") do
    expect(356750.numberword()).to(eq("three hundred fifty six thousand seven hundred fifty"))
  end
  it ("returns the word form of a seven digit number") do
    expect(1350200.numberword()).to(eq("one million three hundred fifty thousand two hundred"))
  end
  # it ("returns the word form of an eight digit number") do
  #   expect(13450213.numberword()).to(eq("one million three hundred forty five thousand two hundred thirteen"))
  # end
end
