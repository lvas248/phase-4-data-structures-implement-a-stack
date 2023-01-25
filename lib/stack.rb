# your code here

class Stack


    attr_accessor :stack, :length

    def initialize(limit = nil)
        @stack = []
        @limit = limit 
    end

    def push(value)
        if @limit
            if @stack.length > @limit
                 @stack.push(value)
            end
        else
            @stack.push(value)
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[@stack.length - 1 ]
    end

    def size
        @stack.size
    end

    def empty?
        @stack.length == 0
    end

    def full?
        @stack.length == @limit
    end

    def search(value)
        if @stack.include?(value)
            ((@stack.length)-1) - @stack.index(value)
        else
            -1
        end
    end

    def all
        @stack
    end


end

stack = Stack.new

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

puts stack.search(4)