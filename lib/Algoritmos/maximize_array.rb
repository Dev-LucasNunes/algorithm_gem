def maximize_array(arr, k)
  n = arr.length

  (1..k).each do |_|
    min = +2147483647
    index = -1

    arr.each_with_index do |val, j|
      if val < min
        min = val
        index = j
      end
    end

    break if min == 0

    arr[index] = -arr[index]
  end

  arr.sum
end
