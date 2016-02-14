class BubbleSort

  def bubble_sort(array)
    array_size = array.length
    loop do
      swaps = false
      swap_numbers(array, swaps, array_size)
      sorted?(swaps)
      break if sorted?(swaps)
     end
    array
  end

  def sorted?(swaps)
    swaps == false
  end

  def swap_numbers(array, swaps, array_size)
    (array_size - 1).times do |index|
     if array[index] > array[index+1]
       array[index], array[index+1] = array[index+1], array[index]
       swaps = true
       bubble_sort(array)
     end
    end
  end
end
