list = ["d", "b", "a", "c"]
ordered = false


until ordered
    counter = 0
    list.each_index do |index|
        if list[index] == list[-1]
            break
        end
        if list[index] > list[index + 1]
            swap_1 = list[index]
            swap_2 = list[index + 1]
            list[index] = swap_2
            list[index + 1] = swap_1
            counter += 1
        end
    end
    if counter == 0
        ordered = true
    end
end
puts list

