# creating a Queue

class Queue
  def initialize
    @store = Array.new
  end

  def enqueue(element)
    @store.push(element)
    # option2: @store.unshift(element)
  end

  def dequeue
    return @store.shift
    # option2: return @store.pop
  end

  def front
    return @store(0)
  end

  def size
    return @store.length
  end

  def empty?
    return size == 0
  end
end
