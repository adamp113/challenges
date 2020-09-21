#Consider a character set consisting of letters, a space, and a point. Words consist of one or more, but at most 20 letters.

# An input text consists of one or more words separated from each other by one or more spaces and terminated by 0 or more spaces
# followed by a point.

# Input should be read from, and including, the first letter of the first word, up to and including the terminating point.

# The output text is to be produced such that successive words are separated by a single space with the last word being terminated
# by a single point.

# Odd words are copied in reverse order while even words are merely echoed.

# For example, the input string
#   "whats the matter with kansas." becomes
#   "whats eht matter htiw kansas."

#   BONUS POINTS: the characters must be read and printed one at a time


#INPUT: string with a period
#OUPTUT: string with every other word (beginning with word #2) reversed and remove the period
#PSEUDO:  # Replace the point (at the end) with a ''
            #Then rstrip/squeeze the white space out
          #Now with a clean string, divide the string into an array of words
          #Iterate over the array of words (Map) out a new array with every second word reversed
          #Join the array back into a string, separating each word with a space.
          #Add a period to the end of the string

class OddWords
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def translate
    return '' if string.empty?
    new = string.delete_suffix(".").split.map.with_index {|word, idx| idx.odd? ? word.reverse : word}
    new.join(' ') + "."
  end

end

# kansas = OddWords.new("whats the matter with kansas   .")
# p kansas.translate

#OR


