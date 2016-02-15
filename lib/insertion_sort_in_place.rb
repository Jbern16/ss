class InsertionSortInPlace

  def insertion_sort(array)
    0.upto(array.length-1).each do |index|
      num_to_insert = array.delete_at(index)
      insertion_index = index
      while insertion_index > 0 && num_to_insert < array[insertion_index -1]
        insertion_index -= 1
      end
    array.insert(insertion_index, num_to_insert)
    end
    array
  end
end
