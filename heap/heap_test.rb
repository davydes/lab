require './max_heap'
require 'test/unit'
require 'test/unit/ui/console/testrunner'

class HeapTest < Test::Unit::TestCase
  def test_heap_init
    heap = MaxHeap.new(1, 3, 2, 6, 7, 10, 15)
    assert(heap.dump == [15, 7, 10, 6, 3, 1, 2])
  end
end

Test::Unit::UI::Console::TestRunner.run(HeapTest)
