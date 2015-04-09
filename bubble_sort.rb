sequence = [4, 3, 2, 1, 0]

@swaps = 0

index = 0

while index + 1 < sequence.length

  if sequence[index] > sequence[index + 1]
    sequence[index], sequence[index + 1] = sequence[index + 1], sequence[index]
    @swaps += 1
    index = 0
    print "#{sequence}\n"
  else
    index += 1
  end
  result = sequence

end

puts "\nFinal result: #{result}"
puts "Swaps: #{@swaps}"
