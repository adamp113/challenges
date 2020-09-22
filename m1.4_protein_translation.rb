AMINOS = {
    'Methionine' => ['AUG'],
    'Phenylalanine' => ['UUU', 'UUC'],
    'Leucine' => ['UUA', 'UUG'],
    'Serine' => ['UCU', 'UCC', 'UCA', 'UCG'],   
    'Tyrosine' => ['UAU', 'UAC'],
    'Cysteine' => ['UGU', 'UGC'],
    'Tryptophan' => ['UGG'],
    'STOP' => ['UAA', 'UAG', 'UGA']
  }

class InvalidCodonError < StandardError; end

class Translation

  def self.of_codon(codon)
    acid = AMINOS.select {|k, v| v.include?(codon) }  
    acid.keys.first
  end

  def self.of_rna(strand)
    raise InvalidCodonError if strand =~ /[^ACGU]/
    final = []
    result = []
    divisor = strand.size / 3
    divisor.times { result << strand.slice!(0, 3)}
    result.map do |codon|
      acid = AMINOS.select {|k, v| v.include?(codon) }
      acid.keys
    end.flatten.each do |word|
      if word == 'STOP'
        return final
      else
        final << word 
      end
    end
    final
  end

end

# p Translation.of_codon('UUC')
# p Translation.of_rna('UGGUGUUAUUAAUGGUUU')