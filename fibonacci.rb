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

output = []
10.times do |i|
  output << fibs_rec(i)
end

puts output.join(', ')
