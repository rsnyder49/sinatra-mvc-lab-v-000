class PigLatinizer
  
  def piglatinize(str)
    x = (str.split(" ").length == 1) ? piglatinize_word(str) : piglatinize_sentence(str)
    puts x
    x
  end
  
  def consonant?(letter)
    !letter.match(/[aAeEiIoOuU]/)
  end
  
  def piglatinize_word(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end
  
  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
  
 end 