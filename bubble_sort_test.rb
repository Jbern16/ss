gem 'minitest', '>= 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  attr_accessor :bs

  def setup
    @bs = BubbleSort.new
  end

  def test_check_if_bubble_sort_works_on_simple_array_nums
    assert_equal [0,1,2,3,4,5,6,7,8,9], bs.bubble_sort([2,0,6,1,8,9,3,7,4,5])
  end

  def test_check_if_bubble_sort_works_on_simple_array_strings
    assert_equal ["A", "B", "C", "D", "E"], bs.bubble_sort(["E", "D", "C", "B", "A"])
  end

  def test_check_if_bubble_sort_returns_argument_errorw_on_mixed_array_strings_and_integers
    skip
    assert_equal nil, bs.bubble_sort([1,3,"a","b",7,"e"])
  end






end
