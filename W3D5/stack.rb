class Stack
    def initialize
        # create ivar to store stack here!
        @ivar = []
    end

    def push(el)
        # adds an element to the stack
        @ivar << el
    end

    def pop
        # removes one element from the stack
        @ivar.pop
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        @ivar[-1]
    end
end

# abc = Stack.new
# (0..10).each { |el| abc.push(el) }
# p abc
# abc.pop
# p abc
# abc.pop
# p abc.peek