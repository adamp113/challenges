#PSEUDO:
  #Determine letter index

  # A - 0
  # B - 1 space
  # C - 2 space
  # D - 3 space
  # E - 4 space
  # D - 3 space
  # C - 2 space
  # B - 1 space
  # A

  class Diamond    
    def self.make_diamond(letter)   
      letters = ('A'..letter).to_a + ('A'...letter).to_a.reverse   
      letter_index = letters.size / 2   
  
      spaces = Array.new(letters.size) { ' ' * letters.size }       
  
      spaces.map do |row|                            
        letter = letters.pop      
  
        row[letter_index.abs] = letter                                                               
        row[-(letter_index.abs + 1)] = letter                                                        
        letter_index -= 1                                                                            
  
        row + "\n"                                                                                   
      end.join                                                                                       
    end                                                                                              
  end 

puts Diamond.make_diamond("C")