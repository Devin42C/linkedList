class LinkedListNode
  attr_accessor :data_value, :pointer

  # in a LinkedList (value, pointer)
  def initialize(data_value, pointer=nil)
    @data_value = data_value
    @pointer = pointer
  end
end

class Stack
  attr_reader :data_value, :pointer

  def initialize
   @head_value = nil
  end

    #push a data_head onto the stack
    #make first value, call node for value + pointer
  def push(data_value)
    @head_value = LinkedListNode.new(data_value, @head_value)
  end

  #check if there is anything in the stack
  #if stack has value 
  #make first value = nil
  #make first value = second value with pointer
  def pop
    if is_empty
      print "nil"
      return
    else
      data_value = @head_value.data_value
      @head_value = @head_value.pointer
      data_value
    end
  end
  #method to check if stack is empty
  def is_empty
    @head_value.nil?
  end

  def reverse_list(list)
    current_node = @head_value
    prev_node = nil

    while (current_node != nil)
      secondstack = current_node.next
      current_node.next = prev_node
      prev_node = current_node
      current_node = secondstack
    end
    list.head_value = prev_node
    puts "THIS IS THE LIST #{list}"
  end

  #OUTPUT HERE
  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

end

stack = Stack.new
stack.push(1)
stack.push(42)
puts stack.pop
puts stack.pop
puts stack.pop


