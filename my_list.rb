require_relative 'my_enumerable'

class Mylist
  include Enumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end
list_of_nums = Mylist.new(1, 2, 3, 4)

puts list_of_nums.all? # true
puts list_of_nums.any? # false
print list_of_nums.filter? # [2, 4]
