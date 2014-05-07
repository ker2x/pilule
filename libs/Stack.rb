module Pilule
  
  class Stack
    
    # Constructor
    def initialize
      @store = Array.new()
      @top = 0
    end
    
    # retrieve and remove an element from top of the stack
    def pop
      if empty?
        nil
      else
        v = @store[@top]
        @store[@top] = nil
        @top = @top.pred
        v
      end
    end
    
    # add an element at top of the stack
    def push(e)
      @top = @top.succ
      @store[@top] = e
      self
    end
    
    # return true if stack is empty
    def empty?
      @top == 0
    end
    
    # return size of the stack
    def size
      @top
    end
    
    def swap
      tmp = @store[@top]
      @store[@top] = @store[@top-1]
      @store[@top-1] = tmp
    end
    
    def dup
      push(@store[@top])
    end
    
  end
    
end
