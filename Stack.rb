# using an array to create a stack.  now normal array methods will not work on our stack.


class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    @store.push(element)
  end

  def pop(num)#ruby does implicit return
    return @store.pop(num)
  end

  def top
    return @store.last
  end

  def size
    return @store.length
  end

  def empty?
    return size == 0 # using the method above will return true or false
  end

end

# s1 = Stack.new
# s1.push("bob")
# puts s1.size
#
# aN = ["sally", "sarah"]
#
# aN.each do |i|
#   s1.push(i)
# end
# puts s1.size
#
# s1.pop(2)
# puts s1.size
