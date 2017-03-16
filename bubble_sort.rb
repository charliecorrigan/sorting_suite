class BubbleSort
    def sort( list )
        ordered = false
        until ordered
            counter = 0
            list.each_index do |index|
                if list[index] == list[-1]
                    break
                end
                if list[index] > list[index + 1]
                    list[index], list[index + 1] = swap(list[index], list[index + 1])
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


