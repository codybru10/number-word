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
  number.store(6," six")
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
  number.store(300,"three hundred ")
  number.store(400,"four hundred")
  number.store(500,"five hundred")
  number.store(600,"six hundred")
  number.store(700,"seven hundred ")
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

  define_method(:numberword) do

  digit = self.to_s.split('').map(&:to_i)
  empty_array = []
  # 1 digit number
  if digit.length() === 1
    ones_spot = number.fetch(digit.at(0))
    empty_array.push(ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
  # 2 digit number - tens
  elsif digit.length() === 2
    if (digit.at(0) === 1)
      empty_array = empty_array.push(digit.at(0), digit.at(1)).join().to_i()
      output = number.fetch(empty_array)
    else
    tens_spot = number.fetch(digit.at(0) * 10)
    ones_spot = number.fetch(digit.at(1))
    empty_array.push(tens_spot, ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
  end
  # 3 digit number - hundreds
  elsif digit.length() === 3
    if digit.at(1) === 1
      hundreds_spot = number.fetch(digit.at(0) * 100)
      empty_array = empty_array.push(digit.at(1), digit.at(2)).join().to_i()
      last_two = number.fetch(empty_array.at(1))
      output = empty_array.push(hundreds_spot,last_two)
      output.join()
      output = output.map { |i| "" + i.to_s + ""}.join("")
    elsif
    hundreds_spot = number.fetch(digit.at(0) * 100)
    tens_spot = number.fetch(digit.at(1) * 10)
    ones_spot = number.fetch(digit.at(2))
    empty_array.push(hundreds_spot,tens_spot, ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
    end
  # 4 digit number - thousands
  elsif digit.length() === 4
    if digit.at(2) === 1
      thousands_spot = number.fetch(digit.at(0) * 1000)
      hundreds_spot = number.fetch(digit.at(1) * 100)
      empty_array = empty_array.push(digit.at(2), digit.at(3)).join().to_i()
      last_two = number.fetch(empty_array(2))
      output = empty_array.push(thousands_spot,hundreds_spot,last_two)
      output.join()
      output = output.map { |i| "" + i.to_s + ""}.join("")
    elsif
    thousands_spot = number.fetch(digit.at(0) * 1000)
    hundreds_spot = number.fetch(digit.at(1) * 100)
    tens_spot = number.fetch(digit.at(2) * 10)
    ones_spot = number.fetch(digit.at(3))
    empty_array.push(thousands_spot,hundreds_spot,tens_spot,ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
    end
  # 5 digit number - ten thousands
  elsif digit.length() === 5
    tens_thousands_spot = number.fetch(digit.at(0) * 10)
    thousands_spot = number.fetch(digit.at(1)) + " thousand"
    hundreds_spot = number.fetch(digit.at(2) * 100)
    tens_spot = number.fetch(digit.at(3) * 10)
    ones_spot = number.fetch(digit.at(4))
    empty_array.push(tens_thousands_spot,thousands_spot,hundreds_spot,tens_spot,ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
  # 6 digit number - hundred thosands
  elsif digit.length() === 6
    hundred_thousands_spot = number.fetch(digit.at(0) * 100)
    tens_thousands_spot = number.fetch(digit.at(1) * 10)
    thousands_spot = number.fetch(digit.at(2)) + " thousand "
    hundreds_spot = number.fetch(digit.at(3) * 100)
    tens_spot = number.fetch(digit.at(4) * 10)
    ones_spot = number.fetch(digit.at(5))
    empty_array.push(hundred_thousands_spot,tens_thousands_spot,thousands_spot,hundreds_spot,tens_spot,ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
  # 7 digit number - millions
  elsif digit.length() === 7
    million_spot = number.fetch(digit.at(0)) + " million "
    hundred_thousands_spot = number.fetch(digit.at(1) * 100)
    tens_thousands_spot = number.fetch(digit.at(2) * 10)
    thousands_spot = number.fetch(digit.at(3))
    if hundred_thousands_spot + tens_thousands_spot + thousands_spot != ""
      thousands_spot = number.fetch(digit.at(3)) + " thousand "
    end
    hundreds_spot = number.fetch(digit.at(4) * 100)
    tens_spot = number.fetch(digit.at(5) * 10)
    ones_spot = number.fetch(digit.at(6))
    empty_array.push(million_spot,hundred_thousands_spot,tens_thousands_spot,thousands_spot,hundreds_spot,tens_spot,ones_spot)
    empty_array.join()
    output = empty_array.map { |i| "" + i.to_s + ""}.join("")
  # 8 digit number - ten millions
  # elsif digit.length() === 8
  #   ten_million_spot = number.fetch(digit.at(0))
  #   million_spot = number.fetch(digit.at(1)) + " million "
  #   hundred_thousands_spot = number.fetch(digit.at(2) * 100)
  #   tens_thousands_spot = number.fetch(digit.at(3) * 10)
  #   thousands_spot = number.fetch(digit.at(4))
  #   if hundred_thousands_spot + tens_thousands_spot + thousands_spot != ""
  #     thousands_spot = number.fetch(digit.at(4)) + " thousand "
  #   end
  #   hundreds_spot = number.fetch(digit.at(5) * 100)
  #   tens_spot = number.fetch(digit.at(6) * 10)
  #   if digit.at(6) === 1
  #     last_two = empty_array.push(digit.at(6), digit.at(7)).join().to_i()
  #     last_two = number.fetch(last_two)
  #   end
  #   ones_spot = number.fetch(digit.at(7))
  #   empty_array.push(ten_million_spot,million_spot,hundred_thousands_spot,tens_thousands_spot,thousands_spot,hundreds_spot,tens_spot,ones_spot)
  #   empty_array.join()
  #   output = empty_array.map { |i| "" + i.to_s + ""}.join("")
    end

    output
  end
end
