class LinkedListNode
  attr_accessor :data_value, :pointer

  # in a LinkedList (value, pointer)
  def initialize(data_value, pointer=nil)
    @data_value = data_value
    @pointer = pointer
  end
end

#OUTPUT HERE
def print_values(list_node)
  if list_node
    print "#{list_node.data_value} --> "
    print_values(list_node.pointer)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
  new_head = list.pointer
  # puts new_head
  list.pointer = previous
  if new_head
    reverse_list(new_head, list)
  else
  return print_values(list)  
  end
end

def infinite_loop (list)
  # isitnilcounter = list.pointer
  isitnil = list.pointer
  list.pointer
  isitnilcounter = list.pointer

  while isitnil != nil
    # puts "Is this even starting"
    #first step check if there is an end of the list
    isitnil = isitnil.pointer
    # puts isitnil
    if isitnil.nil?
      puts "False"
    end
    #second step, check if 
    isitnil = isitnil.pointer
    # puts isitnil
    isitnilcounter = isitnilcounter.pointer
    # puts isitnil 
    # puts isitnilcounter
    if isitnil == isitnilcounter
      puts "True"
    end
  puts "false"
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
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
# node1.pointer = node3

print_values(node3)
infinite_loop(node3)

puts "-------"

revlist = reverse_list(node3)

# print_values(revlist)