def pig_latin_word(word)
  if word[0] =~ (/[aeiou]/)
    word + "way"
  else
    i = word.index(/[aeiou]/)
    cons = word[0..i-1]
    word[i..-1] + cons + "ay"
  end
end

# def pig_latin_array(sentece)
#   array = sentence.split(" ")
#   array.

# end

puts "Please, type the word you want to convert to Pig Latin"
word = gets.chomp

puts "#{word} in Pig Latin is #{pig_latin_word(word)}"

# puts "Please, type the sentence you want to convert to Pig Latin"
# sentence = gets.chomp.to_s

# puts "Your sentence in Pig Latin is: "
# puts pig_latin_array(sentence)
