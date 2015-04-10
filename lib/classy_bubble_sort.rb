class BubbleSort
  attr_reader :swaps

  def initialize
    @swaps = 0
  end

  def sort(seq)
    index = 0
    while index + 1 < seq.length
      if seq[index] > seq[index + 1]
        seq[index], seq[index + 1] = seq[index + 1], seq[index]
        @swaps += 1
        index = 0
        # print "#{seq}\n"
      else
        index += 1
      end
    end
    return seq
  end
end
