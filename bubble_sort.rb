class BubbleSort

def bubble_sort(array_to_get_sorted)
  array_size = array.length
  until sorted?(swaps)
    swaps = 0
    (array_size-1).times do |index|
      swap_numbers(array)
      sorted?(swaps)
    end
  end
  array_to_get_sorted
end


def sorted?(swaps)
  swaps > 0 ? sorted = false : sorted = true
end

def swap_numbers(array)
  if array[index] > array[index+1]
    array[index], array[index+1] = array[index+1], array[index]
    swaps += 1
  end
end



end
