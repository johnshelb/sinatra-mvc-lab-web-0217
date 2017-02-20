class PigLatinizer

  def piglatinize(word)
  #ignore=["i", "me", "to", "too", "a", "an", "in", "and", "on"]
  vowels=['a','e','i','o','u']
    # if word[.downcase=="a"  || word.downcase=="i"]
    #   word + "way"
    # else
      letters_array = word.split('')
      if vowels.include?(letters_array[0].downcase)
        letters_array<<"way"
        letters_array.join
      else
        while !vowels.include?(letters_array[0])
          cons=letters_array.shift
          letters_array<<cons
        end
        letters_array<<"ay"
      end
        letters_array.join
    #end
  end

  def to_pig_latin(string)
    words_array = string.split(" ")
    pig_array=words_array.map {|word| piglatinize(word)}
    pig_array.join(" ")
  end

end
