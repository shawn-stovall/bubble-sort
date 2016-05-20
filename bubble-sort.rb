# Method to complete a basic bubble sort with slight improvement from Wikipedia: Bubble Sort
# Takes a block for custom compare strategies.
def bubble_sort(list, &compare)
  last_sorted = list.length - 1
  sorted = list
  compare ||= Proc.new { |x, y| x <=> y }

  until last_sorted == 0
    sorted, last_sorted = bubble(sorted, last_sorted, &compare)
  end

  return sorted
end

# Method to complete one iteration for a bubble sort
# Takes a block for custom compare strategies.
def bubble(list, last_sorted)
  result = list
  recent_sort = 0
  
  for i in 0...last_sorted
    if yield(result[i], result[i + 1]) > 0
      swap!(result, i, i + 1)
      recent_sort = i
    end
  end

  return [result, recent_sort]
end

# Method to swap two items in a list
def swap!(list, i1, i2)
  temp = list[i1]
  list[i1] = list[i2]
  list[i2] = temp

  return list
end
