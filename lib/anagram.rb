# Your code goes here!
class Anagram
  def initialize(word)
    @word = word
    @anagrams = word.split(//).permutation.to_a.collect { |permutation|
      permutation.join
    }
  end

  def match(words)
    words.select{ |word|
      @anagrams.include?(word)
    }
  end
end
