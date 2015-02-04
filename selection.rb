def sort!(keys)
  for i in 0..keys.size-2
    min = i
    for j in i + 1..keys.size-1
      min = j if keys[j] < keys[min]
    end
    keys[i], keys[min] = keys[min], keys[i]
    end
  keys
end





def insertion_sort(array)
  array.each_with_index do |el,i|
    j = i - 1
    while j >= 0
      break if array[j] <= el
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = el
  end
end


def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = Array.new
  greater = Array.new

  array.each do |x|
    if x <= pivot_value
      lesser << x
    else
      greater << x
    end
  end

  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end


def merge_sort(lst)
  if lst.length <= 1
    lst
  else
    mid = (lst.length / 2).floor
    left = merge_sort(lst[0..mid - 1])
    right = merge_sort(lst[mid..lst.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

puts merge_sort([3.01,3.001,2,45,61,22,11])
