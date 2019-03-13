def bubble_sort numbers
    (numbers.count - 1).times do

        numbers.each_with_index do |number, index|

            if index < numbers.count - 1

                if number > numbers[index + 1]
                    variable = number
                    numbers[index] = numbers[index + 1]
                    numbers[index + 1] = variable
                end
            end
        end
    end
    numbers
end

def optimized_bubble_sort numbers
    has_changed = true

    while has_changed do
        has_changed = false
        numbers.each_with_index do |number, index|
            if index < numbers.count - 1

                if number > numbers[index + 1]
                    variable = number
                    numbers[index] = numbers[index + 1]
                    numbers[index + 1] = variable

                    has_changed = true
                end
            end
        end
    end
    numbers    
end

def bubble_sort_by values
    (values.count - 1).times do

        values.each_with_index do |value, index|
           
            if index < values.count - 1
                if yield(value, values[index + 1]) > 0
                    
                    variable = value
                    values[index] = values[index + 1]
                    values[index + 1] = variable
                end
            end
        end
    end
    values
end

