def missing_character(phrase)
  phrase_array = phrase.downcase.chars
  alphabet = ('a'..'z').to_a
  pangram = alphabet - phrase_array
  puts pangram
  return pangram
end

# posso usar o include? também para ver se está presente no array

phrase = "The Quick brown FOX Jumps"
missing_character(phrase)
