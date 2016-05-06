# Method to complete a basic bubble sort with slight improvement from Wikipedia: Bubble Sort
def bubble_sort(list)
  last_sorted = list.length - 1
  sorted = list

  until last_sorted == 0
    sorted, last_sorted = bubble(sorted, last_sorted)
  end

  return sorted
end

# Method to complete one iteration for a bubble sort
def bubble(list, last_sorted)
  result = list
  recent_sort = 0
  
  for i in 0...last_sorted
    if result[i] > result[i + 1]
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
