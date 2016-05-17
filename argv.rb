def pig_latin_array(sentence)
  array = sentence.split(" ")
  array.collect! do |word|
    if word[0] =~ (/[aeiou]/)
      word + "way"
    else
      i = word.index(/[aeiou]/)
      cons = word[0..i-1]
      word[i..-1] + cons + "ay"
    end
  end
  array.join(" ")
end

sentence = ARGV.join(" ")
puts pig_latin_array(sentence)
