def linear_search(array, key)
  i = 0
  while i < array.length
    if array[i] == key
      puts "a chave #{key} foi encontrada na posição #{i}"
      return
    end
    i += 1
  end
  puts "a chave #{key} não foi encontrada"
end

# def linear_search(arr, key)
#   arr.each_with_index do |element, index|
#     return index if element == key
#   end
#   return "No match found"
# end

# arr = [10, 50, 30, 70, 80, 20, 90, 40]
# key = 30
# result = linear_search(arr, key)
# puts "Index of #{key}: #{result}"
