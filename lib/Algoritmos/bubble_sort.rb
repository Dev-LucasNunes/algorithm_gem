def bubble_sort(array)
  i = 0
  while i < array.length - 1
    j = 0
    while j < array.length - i - 1
      if array[j] > array[j + 1]
        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  array
end

