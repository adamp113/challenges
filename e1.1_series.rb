class Series
  attr_reader :string_digits

  def initialize(string_digits)
    @string_digits = string_digits.each_char.map(&:to_i)
  end

  def slices(num)
      fail(ArgumentError, 'Number is larger than string') if num > string_digits.size
      string_digits.each_cons(num).to_a
  end
end