#case INSENSITIVE - Orchestra matches Carthorse, corn does NOT match CORN
#same string does NOT match - corn does NOT match corn
#NO matches = empty array []
#match = array with single word ['tan']
# Must have exact number of letters galea vs eagle (2 a's vs 2 e's) would return an empty string
  #same as above "good" vs "goody" is NOT a match
#mulltiple anagrams returned in a sorted array


#input: string and array or words
#Output: array of anagrams for the original string
#psuedo: 
  # break original string into an array of characters
  # save the length of the array to LV length
    #iterate over the array of words ['gallery', 'regally', 'clergy']
      #if the string size of the word doesn't match length, disregard the word
        #if the string size of the word DOES match,
            #ITERATE over the characters array of original string 
              #try to sub! each char in the word
            #If you can sub 
# class Anagram
#   attr_reader :string

#   def initialize(string)
#     @string = string.downcase
#   end

#   def match(array_of_words)
#     results = []
#     characters = string.chars
#     length = characters.length
#     clean_array = array_of_words
    
#     clean_array.each do |word|
#       if word.downcase.chars != characters && 
#         word.length == length &&
#         characters.all? {|char| word.downcase.count(char) == characters.count(char)} 
#         results << word
#       end
#     end
#     results.sort
#   end

# end

# OR

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |word| anagrams?(word) }
  end

  def anagrams?(word)
    word.downcase != @word &&
    word.downcase.chars.sort == @word.chars.sort
  end
end