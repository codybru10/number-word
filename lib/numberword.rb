class Fixnum

    def num_digits
      Math.log10(self).to_i + 1
    end

  number = Hash.new()
  number.store(0, "")
  number.store(1,"one")
  number.store(2,"two")
  number.store(3,"three")
  number.store(4,"four")
  number.store(5,"five")
  number.store(6,"six")
  number.store(7,"seven")
  number.store(8,"eight")
  number.store(9,"nine")
  number.store(10,"ten")
  number.store(11,"eleven")
  number.store(12,"twelve")
  number.store(13,"thirteen")
  number.store(14,"fourteen")
  number.store(15,"fifteen")
  number.store(16,"sixteen")
  number.store(17,"seventeen")
  number.store(18,"eighteen")
  number.store(19,"nineteen")
  number.store(20,"twenty")
  number.store(30,"thirty")
  number.store(40,"forty")
  number.store(50,"fifty")
  number.store(60,"sixty")
  number.store(70,"seventy")
  number.store(80,"eighty")
  number.store(90,"ninety")
  number.store(100,"one hundred")
  number.store(200,"two hundred")
  number.store(300,"three hundred")
  number.store(400,"four hundred")
  number.store(500,"five hundred")
  number.store(600,"six hundred")
  number.store(700,"seven hundred")
  number.store(800,"eight hundred")
  number.store(900,"nine hundred")
  number.store(1000,"one thousand")
  number.store(2000,"two thousand")
  number.store(3000,"three thousand")
  number.store(4000,"four thousand")
  number.store(5000,"five thousand")
  number.store(6000,"six thousand")
  number.store(7000,"seven thousand")
  number.store(8000,"eight thousand")
  number.store(9000,"nine thousand")
  number.store(10000,"ten thousand")
  # number.store(11000,"eleven thousand")
  # number.store(12000,"twelve thousand")
  # number.store(13000,"thirteen thousand")
  # number.store(14000,"fourteen thousand")
  # number.store(15000,"fifteen thousand")
  # number.store(16000,"sixteen thousand")
  # number.store(17000,"seventeen thousand")
  # number.store(18000,"eighteen thousand")
  # number.store(19000,"nineteen thousand")
  define_method(:numberword) do

  digit = self.to_s.split('').map(&:to_i)
  empty_array = []
  if digit.length() === 1
    ones_spot = number.fetch(digit.at(0))
    empty_array.push(ones_spot)
    empty_array.join()
    empty_array = empty_array.map { |i| "" + i.to_s + ""}.join("")
  elsif digit.length() === 2
    tens_spot = number.fetch(digit.at(0) * 10)
    ones_spot = number.fetch(digit.at(1))
    empty_array.push(tens_spot, ones_spot)
    empty_array.join()
    empty_array = empty_array.map { |i| "" + i.to_s + ""}.join("")
  elsif digit.length() === 3
    hundreds_spot = number.fetch(digit.at(0) * 100)
    tens_spot = number.fetch(digit.at(1) * 10)
    ones_spot = number.fetch(digit.at(2))
    empty_array.push(hundreds_spot,tens_spot, ones_spot)
    empty_array.join()
    empty_array = empty_array.map { |i| "" + i.to_s + ""}.join("")
  elsif digit.length() === 4
    thousands_spot = number.fetch(digit.at(0) * 1000)
    hundreds_spot = number.fetch(digit.at(1) * 100)
    tens_spot = number.fetch(digit.at(2) * 10)
    ones_spot = number.fetch(digit.at(3))
    empty_array.push(thousands_spot,hundreds_spot,tens_spot,ones_spot)
    empty_array.join()
    empty_array = empty_array.map { |i| "" + i.to_s + ""}.join("")
  elsif digit.length() === 5
    ten_thousands_spot = number.fetch(digit.at(0) * 10000)
    thousands_spot = number.fetch(digit.at(1) * 1000)
    hundreds_spot = number.fetch(digit.at(2) * 100)
    tens_spot = number.fetch(digit.at(3) * 10)
    ones_spot = number.fetch(digit.at(4))
    empty_array.push(ten_thousands_spot,hundreds_spot,tens_spot,ones_spot)
    empty_array.join()
    empty_array = empty_array.map { |i| "" + i.to_s + ""}.join("")
    end
    empty_array
  end
end
