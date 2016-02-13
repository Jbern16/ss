gem 'minitest', '>= 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'insertion_sort'

class InsertionSortTest < Minitest::Test
  attr_accessor :is

  def setup
    @is = InsertionSort.new
  end

  def test_check_if_insertion_sort_works_on_simple_array_nums
    assert_equal [0,1,2,3,4,5,6,7,8,9], is.insertion_sort([2,0,6,1,8,9,3,7,4,5])
  end

  def test_check_if_insertion_sort_works_on_simple_array_strings
    assert_equal ["A", "B", "C", "D", "E"], is.insertion_sort(["E", "D", "C", "B", "A"])
  end

end
