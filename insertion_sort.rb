class InsertionSort

  def insertion_sort(array)
  (1..array.length-1).map do |index|
    num_to_insert = array.delete_at(index)
    insertion_index = index
    insertion_index -= 1 while insertion_index > 0 && num_to_insert < array[insertion_index -1]
    array.insert(insertion_index, num_to_insert)
   end
  array
  end

end
