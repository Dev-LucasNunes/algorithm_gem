def missing_character(phrase)
  phrase_array = phrase.downcase.chars
  alphabet = ('a'..'z').to_a
  pangram = alphabet - phrase_array
  puts pangram
  return pangram
end

