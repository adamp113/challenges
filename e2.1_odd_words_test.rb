require 'minitest/autorun'
require_relative 'e2.1_odd_words'

class OddWordsTest < Minitest::Test
  def test_kansas
    assert_equal "whats eht matter htiw kansas.", OddWords.new("whats the matter with kansas.").translate
  end

  def test_nil_string
    assert_equal "", OddWords.new("").translate
  end

  def test_dot
    assert_equal ".", OddWords.new(".").translate
  end

  def test_string_with_one_word
    assert_equal "whats.", OddWords.new("whats       .").translate
  end

  def test_string_with_two_words
    assert_equal "whats eht.", OddWords.new("whats the .").translate
  end

  def test_more_spaces_between_words
    assert_equal "whats eht.", OddWords.new("whats     the   .").translate
  end

  # def test_string_with_capital_letters
  #   assert_equal "whats eht matter htiw kansas.", OddWords.new("whats the matter with kansas.").translate
  # end



end
