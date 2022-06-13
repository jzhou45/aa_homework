class Queue
    def initialize
        @ivar = []
    end

    def enqueue(el)
        @ivar << el
    end

    def dequeue
        @ivar.shift
    end

    def peek
        @ivar[0]
    end

    def show
        p @ivar
    end
end

abc = Queue.new
p abc.show << 1
p abc
# (0..10).each { |el| abc.enqueue(el) }
# p abc
# abc.dequeue
# p abc
# abc.dequeue
# p abc.peek