class SumOfMultiples

  def initialize(*multiples)
    @multiples = (multiples.empty? ? [3, 5] : multiples)
  end

  def self.to(limit, multiples=[3, 5])
    results = []
    (0...limit).each do |num|
      multiples.each { |multiple| results << num if num % multiple == 0}
    end
    results.uniq.sum
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end
 
end