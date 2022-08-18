require_relative 'enumerable'

class List
  include Enumerable
  def initialize(lists)
    @lists = lists
  end

  def each
    @lists.length.times { |i| yield @lists[i] }
  end
end

# Create our list
lists = List.new(1, 2, 3, 4)
puts(lists)
# <List: @list=[1, 2, 3, 4]>

# Test #all?
lists.all? { |i| i < 5 }
puts(lists)
# => true
lists.all? { |i| i > 5 }
puts(lists)
# => false
# Test #any?
lists.any? { |i| i == 2 }
puts(lists)
# => true
lists.any? { |i| i == 5 }
puts(lists)
# => false
# Test #filter
lists.filter(&:even?)
puts(lists)
# => [2, 4]
