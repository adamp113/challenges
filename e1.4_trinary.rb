class Trinary
  attr_reader :number, :length
  EXCEPTIONS = /[^0-2]/

  def initialize(string_number)
    @string_num = string_number
    @number = string_number.to_i.digits.reverse
    @length = number.size
  end

  def to_decimal
    return 0 if @string_num =~ EXCEPTIONS
    counter = 1
    total = 0
    number.each do |digit|
      total += digit*3**(length - counter)
      counter += 1
    end
    total
  end
  
end