class MaxHeap
  def initialize(*args)
    @heap = [0]
    @heap += args
    build
  end

  def dump
    res = @heap
    res.shift
    res
  end

  def root
    1
  end

  def left(i)
    i*2
  end

  def right(i)
    i*2+1
  end

  def parent(i)
    i/2
  end

  def value(i)
    @heap[i]
  end

  def size
    @heap.size-1
  end

  def heapify(i)
    largest = value(i)
    left  = left(i)
    right = right(i)

    if left <= size && value(left) > largest
      largest = left
    end

    if right <= size && value(right) > largest
      largest = right
    end

    if largest != value(i)
      val = @heap[i]
      @heap[i] = @heap[largest]
      @heap[largest] = val
      heapify(largest)
    end
  end

  private

  def build
    (size/2).downto(root) do |i|
      heapify(i)
    end
  end
end
