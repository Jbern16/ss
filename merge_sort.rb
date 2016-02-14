class MergeSort

 def merge_sort(array)
   mid = (array.size / 2).floor
   left = array.slice(0, mid - 1)
   right = array.slice(mid, array.size)
   merge(left, right)
 end

 def merge(left, right)
