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

fibs(10)
