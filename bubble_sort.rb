class BubbleSort
    def sort( list )
        ordered = false
        until ordered
            swaps_completed = 0
            list.each_index do |i| 
                if end_of_list?(list, i) then break end
                if pair_unordered?(list, i)
                    list[i], list[i + 1] = swap(list, i)
                    swaps_completed += 1
                end
            end
            if swaps_completed == 0 then ordered = true end
        end
        puts list
    end

    def swap(list, i)
        value_1 = list[i + 1]
        value_2 = list[i]
        return value_1, value_2
    end

    def end_of_list?(list, i)
        list[i] == list[-1]
    end

    def pair_unordered?(list, i)
        list[i] > list[i + 1]
    end
end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])




