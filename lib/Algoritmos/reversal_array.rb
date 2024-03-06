require 'bundler/setup'
require 'ruby_algorithm'


def reverse_array(arr, k)
  new_array = arr.rotate(-k)
  puts new_array
end

# input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# k = 3
# reverse_array(input, k)


# def reverse_array(arr, k)
#   n = arr.length
#   k = k % n  # Garante que k esteja dentro dos limites do array

#   i = 0
#   while i < k
#     temp = arr.pop  # Remove o último elemento e armazena em temp
#     arr.unshift(temp)  # Insere temp no início do array
#     i += 1
#   end

#   puts arr.inspect
# end

# input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# k = 3
# reverse_array(input, k)
