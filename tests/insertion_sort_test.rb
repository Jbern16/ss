gem 'minitest', '>= 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort_in_place'

class InsertionSortTest < Minitest::Test
  attr_accessor :is

  def setup
    @is = InsertionSortInPlace.new
  end

  def test_check_if_insertion_sort_works_on_simple_array_nums
    assert_equal [0,1,2,3,4,5,6,7,8,9], is.insertion_sort([2,0,6,1,8,9,3,7,4,5])
  end

  def test_check_if_insertion_sort_works_on_simple_array_strings
    assert_equal ["A", "B", "C", "D", "E"], is.insertion_sort(["E", "D", "C", "B", "A"])
  end

  def test_sort_with_empty_array
    assert_equal [], is.insertion_sort([])
  end

  def test_sort_with_one_number
    assert_equal [1], is.insertion_sort([1])
  end

  def test_sort_with_reversed_alphabet
    ordered_alpabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    reversed_alphabet = %w(z y x w v u t s r q p o n m l k j i h g f e d c b a)
    assert_equal ordered_alpabet , is.insertion_sort(reversed_alphabet)
  end

  def test_sort_with_odd_number_array_of_numbers
    number_array = [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    ordered_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    assert_equal ordered_array, is.insertion_sort(number_array)
  end

  def test_sort_with_already_sorted_array
    number_array = [1,2,3,4,5,6,7,8]
    assert_equal number_array, is.insertion_sort(number_array)
  end

end
