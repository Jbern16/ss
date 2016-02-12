require_relative 'bubble_sort'

gem 'minitest', '>= 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'binary_search_tree'
require_relative 'node'

class BubbleSortTest < Minitest::Test
  attr_accessor :bs
  def setup
    @bs = BubbleSort.new
  end

  def check_if_bubble_sort_works_on_simple_array
  skip
  assert_equal, 
  end



end
