#If you have two sequences of UNEQUAL LENGTH, use the shorter length




class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(new_strand)
    mutations = []
    strand.length 
    new_strand.length

    if strand.length <= new_strand.length
      combined_array = strand.chars.zip(new_strand.chars)
      combined_array.each { |pair| mutations << pair if pair[0] != pair[1] }
    else  
      combined_array = new_strand.chars.zip(strand.chars)
      combined_array.each { |pair| mutations << pair if pair[0] != pair[1] }
    end
  mutations.size
  end
end



#OR

# class DNA
#   def initialize(strand)
#     @strand = strand
#   end

#   def hamming_distance(strand_2)
#     strand_1 = @strand[0, strand_2.length]

#     strand_1.chars.zip(strand_2.chars).count { |pair| pair.first != pair.last }
#   end
# end

# original = DNA.new('AGXYAZ')
# p original.hamming_distance('AMNO')
