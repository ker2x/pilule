require "libs/Stack"
require "test/unit"

class TestStack < Test::Unit::TestCase
  
  def test_pushpop
    s = Pilule::Stack.new
    s.push("a")
    assert_equal("a", s.pop)
  end
  
  def test_size
    s = Pilule::Stack.new
    s.push("a")
    assert_equal(1, s.size)
  end
  
  def test_empty
    s = Pilule::Stack.new
    assert(s.empty?, "stack should be empty")    
    s.push(42)
    assert(!s.empty?, "stack shouldn't be empty")
    s.pop
    assert(s.empty?, "stack should be empty")    
  end
  
  def test_dup
    s = Pilule::Stack.new
    assert_equal(0, s.size)    
    s.push(42)
    assert_equal(1, s.size)    
    s.dup
    assert_equal(2, s.size)
    v = s.pop
    assert_equal(1, s.size)
    assert_equal(42, v)    
    w = s.pop
    assert_equal(42, w)    
    assert(s.empty?, "stack should be empty")
  end
  
  def test_swap
    s = Pilule::Stack.new
    s.push(1)
    s.push(2)
    s.swap
    assert_equal(2, s.size)
    assert_equal(1, s.pop)    
    assert_equal(2, s.pop)    
  end
  
end