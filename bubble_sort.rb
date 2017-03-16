class BubbleSort
    def sort( list )
        ordered = false
        until ordered
            counter = 0
            list.each_index do |i|
                if list[i] == list[-1]
                    break
                end
                if list[i] > list[i + 1]
                    list[i], list[i + 1] = swap(list[i], list[i + 1])
                    counter += 1
                end
            end
            if counter == 0
                ordered = true
            end
        end
        puts list
    end

    def swap(value_1, value_2)
        return value_2, value_1
    end

end

sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])

