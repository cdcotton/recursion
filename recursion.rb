def fibs(n)
  output = []
  last_number = 0
  next_number = 1
  n.times do
    output << next_number
    next_number = last_number + output[-1]
    last_number = output[-1]
  end

  puts "Non-recursive: #{output.join(', ')}"
end

def fibs_rec(n)
  if n < 2
    return n
  else
    return fibs_rec(n - 1) + fibs_rec(n - 2)
  end
end

def merge_sort(array)
    return array if array.length == 1
    array1 = merge_sort(array[0..array.length/2-1])
    array2 = merge_sort(array[array.length/2..-1])

    merge(array1, array2)
end

def merge(array1, array2)
  sorted = []

  until array1.empty? || array2.empty?
    if array1[0] <= array2[0]
      sorted << array1.shift
    else
      sorted << array2.shift
    end
  end

  sorted + array1 + array2
end

puts merge_sort([3, 7, 5, 5, 0, 2, 12, 40, 4]).to_s
