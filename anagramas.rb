def are_anagrams?(word_1,word_2)
  word_1.upcase.chars.sort == word_2.upcase.chars.sort
end

def canonical(word)
  word.upcase.chars.sort
end

def are_anagrams_each?(word_1,word_2)
 canonical(word_1) == canonical(word_2)
end

def anagrams_for(word,array)
  a =[]
  array.each{ |x| a << x if canonical(x) == canonical(word) }
  return a
end

def anagrams_for_2(word,array)
  array.select{ |x| x if canonical(x) == canonical(word) }
end 

# Driver Code
p are_anagrams?("AmoR", "RoMa") == true
p are_anagrams_each?("AmOR", "omAr") == true

array = ["pescado","oMaR","Mroa","Cadale","RomAi","AmoRe","RaMo"]
p anagrams_for_2("Maro",array) == ["oMaR","Mroa","RaMo"]
p anagrams_for("ROam",array) == ["oMaR","Mroa","RaMo"]


