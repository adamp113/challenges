# 233 # octal
# = 2*8^2 + 3*8^1 + 3*8^0
# = 2*64  + 3*8   + 3*1
# = 128   + 24    + 3
# = 155

#17 is 15
  #1*8^1 + 7*8^0


  class Octal
    attr_reader :number, :length
    EXCEPTIONS = /[^0-7]/

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
        total += digit*8**(length - counter)
        counter += 1
      end
      total
    end
    
  end

  # OR

  # class Octal
  #   BASE = 8
  #   INVALID_OCTAL = /\D|[8-9]/
  
  #   attr_reader :octal_string
  
  #   def initialize(octal_string)
  #     @octal_string = octal_string
  #   end
  
  #   def to_decimal
  #     octal_string =~ INVALID_OCTAL ? 0 : calculate
  #   end
  
  #   private
  
  #   def calculate
  #     decimal = 0
  #     octal_string.reverse.each_char.with_index do |char, index|
  #       decimal += char.to_i * (BASE ** index)
  #     end
  #     decimal
  #   end
  
  # end
