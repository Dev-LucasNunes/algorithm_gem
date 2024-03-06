require 'bundler/setup'
require 'ruby_algorithm'

##jeito sem usar metodos ruby###

def maximize_array(arr, k)
  sum = 0
  sum_negative = 0
  result = 0

    arr.each do |nbr|
      if nbr.negative?
        positive = nbr * -1
        sum_negative += positive
      else
      sum += nbr
      end
      result = sum + sum_negative
    end
  puts result
end
# arr = [-2, 0, 5, -1, 2]
# k = 4

# maximize_array(arr, k)


###com metodos ruby###

# def maximum_sum(arr, k)
#   n = arr.length

#   (1..k).each do |_|
#     min = arr.min
#     index = arr.index(min)
#     break if min == 0
#     arr[index] = -arr[index]
#   end

#   sum = arr.sum
#   return sum
# end

# arr = [9, 8, 8, 5]
# k = 2
# resultado = maximize_array(arr, k)
# puts resultado
