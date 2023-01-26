require_relative './my_enumerable'

class MyList
  attr_accessor :list

  include MyEnumerable

  def initialize(*numbers)
    @list = numbers
  end

  def each
    @list.each { |item| yield(item) if block_given? }
  end
end

# Create our list
mylist = MyList.new(1, 2, 3, 4)

# Test #all?
mylist.all? { |e| e < 5 }
mylist.all? { |e| e > 5 }

# Test #any?
mylist.any? { |e| e == 2 }
mylist.any? { |e| e == 5 }

# Test #filter?
mylist.filter(&:even?)
