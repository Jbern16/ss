class BubbleSort

def bubble_sort(array)
  array_size = array.length
  until sorted?(swaps)
    swaps = 0
    (array_size-1).times do |index|
      if array[index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
        swaps += 1
      end
      sorted?(swaps)
    end
  end
  array
end

def sorted?(swaps)
  swaps > 0 ? sorted = false : sorted = true
end


end
