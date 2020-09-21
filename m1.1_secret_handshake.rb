# Write a program that will take a decimal number, and convert it to the appropriate sequence of events for a secret handshake.

# There are 10 types of people in the world: Those who understand binary, and those who don't. You and your fellow cohort of those in the "know" when it comes to binary decide to come up with a secret "handshake".

# Copy Code
# 1 = wink                  # 1
# 10 = double blink         # 2
# 100 = close your eyes     # 4
# 1000 = jump               # 8
# 10_000 =                  # Reverse the order of the operations in the secret handshake.


# Copy Code
# handshake = SecretHandshake.new 9        => 9 = 8 + 0 + 0 + 1
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"  => reverse 9
# handshake.commands # => ["jump","wink"]
# The program should consider strings specifying an invalid binary as the value 0.

# Example: 10110011

# The place value of the last 1 (rightmost position) is 1.
# The place value of the 1 before that is 2.
# The place value of the 0 before that is 4.
# The place value of the 0 before that is 8.
# The place value of the 1 before that is 16.
# The place value of the 1 before that is 32.
# The place value of the 0 before that is 64.
# The place value of the 1 before that is 128.

# 1 = 1
# 10 = 2
# 100 = 4
# 1_000 = 8
# 10_000 = 16
# 100_000 = 32

# [ 32, 16, 8, 4, 2, 1]

# Copy Code
# 1 = wink                  # 1
# 10 = double blink         # 2
# 100 = close your eyes     # 4
# 1000 = jump               # 8
# 10_000 =                  # Reverse the order of the operations in the secret handshake.

#INPUT: Integer
#OUTPUT: Array or strings (Secret Handshake)

#PSUEDO: 
  #If a string is given, convert it to a binary number
  #convert an integer into a binary number
    #Then convert binary number into handshake commands

    class SecretHandshake
      attr_reader :array

      COMMANDS = ["wink", "double blink", "close your eyes", "jump"]

      def initialize(number)
        @array = number.to_i.to_s(2).chars.reverse
      end
    
      def commands
        
        result = array.map.with_index { |val, idx| COMMANDS[idx] if val == "1" } - [nil]
        array.size >= 5 ? result.reverse : result
      end
    end

# new = SecretHandshake.new(9)
# p new.commands