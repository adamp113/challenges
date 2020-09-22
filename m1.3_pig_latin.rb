# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below), but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
# There are a few more rules for edge cases, and there are regional variants too.

#INPUT: String (one word or many)
#OUTPUT: translated string (or strings)
#PSEUDO: define vowels
        # split string into words (if multiple words)
            #each word gets placed into 


# VOWELS = ['a', 'e', 'i', 'o', 'u']

# class PigLatin


#   def self.translate(string)
#     return string + 'ay' if VOWELS.include?(string[0])
#     consonants = ''
#     counter = 0
#     string.chars.each do |char|
#       if !VOWELS.include?(string[counter])
#         consonants << char 
#         counter += 1
#       else
#         return string[consonants.size..-1] + consonants + 'ay'
#       end
#     end
#   end

# end

#OR

# class PigLatin
#   def self.translate(string)
#     string.split(" ").each do |word|
#       if word.scan(/^[aeiou]|^(y|x)[^aeiou]+/).empty?
#         word << word.slice!(/^[^aeiouq]*(qu)*/)
#       end
#       word << "ay"
#     end
#     .join(" ")
#   end
# end


#OR

class PigLatin
  PIG = 'ay'.freeze

  def self.translate(words)
    words.split.map do |word|
      idx = word =~ /[aeiou]|[xy][^aeiou]/
      idx += 1 if word =~ /qu/

      word[idx..-1] + word[0...idx] + PIG
    end.join(' ')
  end
end


p PigLatin.translate('prapple')