# The rules are as follows:

# If the phone number is less than 10 digits assume that it is bad number
# If the phone number is 10 digits assume that it is good
# If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits
# If the phone number is 11 digits and the first number is not 1, then it is a bad number
# If the phone number is more than 11 digits assume that it is a bad number
# Test suite:

#PSEUDO:
  #clean the string of all non-numeric characters
  #run the tests/checks above
    #return 000000000000 if invalid
    #otherwise, return stringnumber with just numbers (nothing else)

class PhoneNumber
  attr_reader :digits

  INVALID_NUMBER = '0000000000'

  def initialize(digits)
    @digits = digits
  end

  def number
    return INVALID_NUMBER if digits =~ /[a-z]/i
    clean_number = digits =~ /[^0-9]/ ? digits.gsub!(/[^0-9]/, '') : digits
    length = clean_number.length
    return INVALID_NUMBER if (length < 10) || (length > 11) || (length == 11 && clean_number[0] != '1')
    return clean_number[1..-1] if (length == 11 && clean_number[0] == '1')
    clean_number
  end

  def area_code
    cleaned = number
    cleaned[0, 3]
  end

  def to_s
    cleaned = number
    area_code = cleaned[0, 3]
    central_office_code = cleaned[3, 3]
    line_code = cleaned[6, 4]
    "(#{area_code}) #{central_office_code}-#{line_code}"
  end
end


# number = PhoneNumber.new('19876543210')
# p number.number

#OR

# class PhoneNumber
#   INVALID = '0000000000'

#   attr_reader :phone_number

#   def initialize(number)
#     @phone_number = format(number)
#   end

#   def format(number)
#     return INVALID if number.match(/[a-zA-Z]/)

#     number = number.gsub(/\D/, '')

#     return INVALID if invalid?(number)

#     number.length == 11 ? number[1, 10] : number
#   end

#   def invalid?(number)
#     number.length < 10 ||
#       number.length > 11 ||
#       (number.length == 11 && number[0] != '1')
#   end

#   def number
#     phone_number
#   end

#   def area_code
#     phone_number[0, 3]
#   end

#   def exchange
#     phone_number[3, 3]
#   end

#   def sln
#     phone_number[6, 4]
#   end

#   def to_s
#     '(' + area_code + ') ' + exchange + '-' + sln
#   end
# end

#OR

# class PhoneNumber

#   ERROR_NUMBER = '0000000000'

#   def initialize(number)
#     @number = number
#     @number = has_alpha_characters? ? ERROR_NUMBER : number.scan(/\d/).join
#   end

#   def number
#     @number.slice!(0,1) if @number[0] == '1' && @number.size == 11
#     return ERROR_NUMBER unless @number.size == 10
#     @number
#   end

#   def has_alpha_characters?
#     @number.scan(/[a-z]/).size != 0
#   end

#   def area_code
#     number[0..2]
#   end

#   def central_office_code
#     number.chars.slice(3..5).join
#   end

#   def line_code
#     number.chars.slice(6..9).join
#   end

#   def to_s
#     "(#{area_code}) #{central_office_code}-#{line_code}"
#   end
# end