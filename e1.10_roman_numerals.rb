class Integer
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def to_roman
    result = ''
    number = self
    ROMAN_NUMERALS.each do |key, value|
      multiplier, remainder = number.divmod(value)
      if multiplier > 0
        result += (key * multiplier)
      end
      number = remainder
    end
    result
  end
end