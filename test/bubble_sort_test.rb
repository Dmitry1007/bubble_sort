# require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/classy_bubble_sort'

class BubbleSortTest < Minitest::Test
  attr_reader :bubbles

  def setup
    @bubbles = BubbleSort.new
  end

  def test_it_sorts_an_empty_array
    assert_equal [], bubbles.sort([])
  end

  def test_it_sorts_a_single_element
    assert_equal [1], bubbles.sort([1])
    assert_equal [5], bubbles.sort([5])
  end

  def test_it_sorts_two_in_order_elements
    assert_equal [0,1], bubbles.sort([0,1])
    assert_equal [1,2], bubbles.sort([1,2])
  end

  def test_it_sorts_two_elements_in_reverse_order
    assert_equal [0,1], bubbles.sort([1,0])
    assert_equal [3,5], bubbles.sort([5,3])
  end

  def test_it_sorts_three_elements_in_reverse_order
    assert_equal [1,3,5], bubbles.sort([5,3,1])
    assert_equal [2,3,5], bubbles.sort([5,3,2])
  end

  def test_it_sorts_any_amount_of_elements_in_reverse_order
    assert_equal [0,1,2,3,5], bubbles.sort([5,3,2,1,0])
    assert_equal [0,1,2,3,5,6,7,8], bubbles.sort([8,7,6,5,3,2,1,0])
  end
end
