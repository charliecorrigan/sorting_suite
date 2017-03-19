class BubbleSort
  def sort(list)
    @list     = list
    @ordered  = false
    
    bubble_sort_loop until @ordered
    puts @list
  end

  def bubble_sort_loop
    swaps_completed = false
    @list.each_index do |i| 
      break if end_of_list?(i)
      if pair_unordered?(i)
        @list[i], @list[i + 1] = swap(i)
        swaps_completed = true
      end
    end
    @ordered = true if swaps_completed == false
  end

  def swap(i)
    value_1 = @list[i + 1]
    value_2 = @list[i]
    return value_1, value_2
  end

  def end_of_list?(i)
    @list[i] == @list[-1]
  end

  def pair_unordered?(i)
    @list[i] > @list[i + 1]
  end

end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])




