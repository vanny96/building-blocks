def stock_picker (stock_array)
    couple_result = [0, 0]
    for i in 0...stock_array.length do
        for j in i...stock_array.length do
            if stock_array[couple_result[1]]-stock_array[couple_result[0]] < 
                stock_array[j]-stock_array[i]
                  
                  couple_result = [i, j]  
            end
        end
    end
    return couple_result
end

puts "Enter the stock values to study (0 to stop)"
my_stocks = []
stock_value = gets.chomp.to_i
while stock_value != 0 do
    my_stocks << stock_value
    stock_value = gets.chomp.to_i
end


print "#{stock_picker(my_stocks)}\n"

