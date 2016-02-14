class MergeSort

  def merge_sort(list)
    mid = list.size / 2
    left = list[0..(mid-1)]
    right = list[mid..-1]
    merge(left, right)
  end

  def merge(left, right)
    sorted_array = []
    left_index = 0
    right_index = 0
    while left_index < left.count && right_index < right.count
      if left(left_index) <= right(right_index)
        sorted_array << left(left_index)
      else
        sorted_array << right(right_index)
      end
    end
    while left_index < left.count
      sorted_array << left[left_index]
      left_index +=1
    end
    while right_index < right.count
      sorted_array << right[right_index]
      right_index +=1
    end
    sorted_array
  end

end
