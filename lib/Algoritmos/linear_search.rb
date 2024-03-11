def linear_search(array, key)
  i = 0
  while i < array.length
    if array[i] == key
      return key
    end
    i += 1
  end
  puts "a chave #{key} não foi encontrada"
end
