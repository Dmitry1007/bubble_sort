seq = [4, 3, 2, 1, 0]
 
@swaps = 0

index = 0

while index + 1 < seq.length

  if seq[index] > seq[index + 1]
    seq[index], seq[index + 1] = seq[index + 1], seq[index]
    @swaps += 1
    index = 0
    print "#{seq}\n"
  else
    index += 1
  end
  result = seq

end

puts "\nFinal result: #{result}"
puts "Swaps: #{@swaps}"
