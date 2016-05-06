def are_anagrams?(word_1,word_2)
  word_1.upcase.chars.sort == word_2.upcase.chars.sort
end

p are_anagrams?("AmoR", "RoMa")

def canonical(word)
  word.upcase.chars.sort
end

def are_anagrams_each?(word_1,word_2)
 canonical(word_1) == canonical(word_2)
end

p are_anagrams_each?("AmOR", "omAr")

def anagrams_for(word,array)
  a =[]
  array.each{ |x| a << x if canonical(x) == canonical(word) }
  return a
end

array = ["pescado","oMaR","Mroa","Cadale","RomAi","AmoRe","RaMo"]

p anagrams_for("ROam",array)

def anagrams_for_2(word,array)
  array.select{ |x| x if canonical(x) == canonical(word) }
end 

p anagrams_for_2("Maro",array)



