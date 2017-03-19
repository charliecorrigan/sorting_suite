

unsorted = [5, 8, 1, 9, 3, 20, 4, 2, 6]
sorted = []
finished = false
current = nil
magic_index = nil

current = unsorted.shift
sorted << current

until finished
  current = unsorted.shift
  sorted.each_with_index do |sorted_item, index_of_item|
    if current < sorted_item
      magic_index = index_of_item
      break
    else
      magic_index = -1
    end
  end
  sorted.insert(magic_index, current)
  
  finished = true if unsorted.empty?
end

puts "new sorted array is #{sorted}"
