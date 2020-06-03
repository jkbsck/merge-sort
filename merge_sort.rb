# MERGE SORT

def merge_sort(ary)
  right = []
  left = []

  ary.each_with_index { |element, i| right[i] = element }
  left = right.slice!(0, right.length / 2)

  merge_sort(left) if left.length > 1
  merge_sort(right) if right.length > 1

  l = 0
  r = 0
  i = 0
  ary.map do |element|
    if left[l] == nil
      ary[i] = right[r]
      r += 1
    elsif right[r] == nil
      ary[i] = left[l]
      l += 1
    elsif left[l] < right[r]
      ary[i] = left[l]
      l += 1
    else
      ary[i] = right[r]
      r += 1
    end
    i += 1
  end
  
  ary
end

p merge_sort [3, 5, 1, 2, 6, 4]
p merge_sort [2, 1]
p merge_sort %w(f w r i s)
p merge_sort %w(p u c l d i a m y u r u p k n t d z)
