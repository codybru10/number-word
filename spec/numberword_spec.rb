require ('rspec')
require ('numberword')

describe("Fixnum#numberword") do
  it ("returns the word form of a single digit number") do
    expect(1.numberword()).to(eq("one"))
  end
  it ("returns the word form of a double digit number up to 19") do
    expect(10.numberword()).to(eq("ten"))
  end
  it ("returns the word form of a number between 20 and 99") do
    expect(25.numberword()).to(eq("twentyfive"))
  end
  it ("returns the word form of a triple digit number") do
    expect(100.numberword()).to(eq("one hundred"))
  end
  it ("returns the word form of a quadruple digit number") do
    expect(2000.numberword()).to(eq("two thousand"))
  end
  it ("returns the word form of a five digit number") do
    expect(30000.numberword()).to(eq("thirty thousand"))
  end
end
