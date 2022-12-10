def bubble_sort(array)
  swapped = true
  while swapped do
    swapped = false
    (0..array.length - 2).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if !swapped
  end
  array
end

# my_arr = [4,3,78,2,0,2]
my_arr = [4, 3,400, 50, 78, 2, 0, 2, 10, 56, 99]
ans = bubble_sort(my_arr)
print ans
