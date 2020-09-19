#Ignore Punctuation
#Handles Cramped lists (asb,cde,fgh)
#Include numbers
#Include apostrophes
#Include QUOTATIONS
#Case Insensitive (all lowercase)


#return a hash



class Phrase
  attr_reader :phrase, :clean_phrase

  def initialize(phrase)
    @phrase = phrase
    @clean_phrase = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    results = Hash.new(0)
    
    clean_phrase.each {|word| results[word] += 1 }
    results
  end

end


# phrase = Phrase.new('word count, for FOR for me')
# # counts = { 'word' => 1 }
# p phrase.word_count