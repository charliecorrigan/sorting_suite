class InsertionSort
  def sort(unsorted)
    @unsorted         = unsorted
    @sorted           = []
    @finished         = false
    @current          = nil
    @insertion_index  = nil

    sort_first_item
    sort_remaining_items
    puts @sorted
  end

  def sort_first_item
    @current = @unsorted.shift
    @sorted << @current
  end

  def sort_remaining_items
    until @finished
      @current = @unsorted.shift
      @sorted.each_with_index do |sorted_item, index_of_item|
        if @current < sorted_item
          @insertion_index = index_of_item
          break
        else
          @insertion_index = -1
        end
      end
      @sorted.insert(@insertion_index, @current)
      @finished = true if @unsorted.empty?
    end
  end
end

sorter = InsertionSort.new
sorter.sort(["d", "b", "a", "c"])

