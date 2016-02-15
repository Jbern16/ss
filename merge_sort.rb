require 'pry'

class MergeSort


 def merge_sort(array)
   if array.length <= 1
     return array
   end
   mid = array.size / 2
   left = array[0, mid]
   right = array[mid, array.size]
   merge(merge_sort(left), merge_sort(right))
 end

 def merge(left, right)
   sorted = []
   until left.empty? || right.empty?
     if left.first <= right.first
       sorted << left.shift
     else
       sorted << right.shift
     end
   end
   sorted.concat(left).concat(right)
 end

end
