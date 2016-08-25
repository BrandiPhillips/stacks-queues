# using an array to create a stack.  now normal array methods will not work on our stack.  


class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    @store.push(element)
  end

  def pop #ruby does implicit return
    return @store.pop
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
