module Enumerable
    def my_each
        counter = 0
        until self[counter].nil? do
            yield(self[counter])
            counter += 1
        end
    end
    def my_each_with_index
        counter = 0
        until self[counter].nil? do
            yield(self[counter], counter)
            counter += 1
        end
    end
    def my_select
        new_array = []
        self.my_each do |element|
            if yield(element)
                new_array << element
            end
        end
        new_array
    end
    def my_all?
        self.my_each do |element|
            if !yield(element)
                return false
            end
        end
        return true
    end
    def my_any?
        self.my_each do |element|
            if yield(element)
                return true
            end
        end
        return false
    end
    def my_none?
        self.my_each do |element|
            if yield(element)
                return false
            end
        end
        return true
    end
    def my_count
        count = 0
        self.my_each do |element|
            count += 1
        end
        count
    end    
    def my_map *arguments
        if arguments.size == 1
            new_array = []
            self.my_each do |element|
                new_array << arguments[0].call(element)
            end
            return new_array
        elsif argument.size == 0
            new_array = []
            self.my_each do |element|
                new_array << yield(element)
            end
            retunr new_array
        else
            puts "Only 0 or 1 arguments accepted"
        end

    end
    def my_inject *values
        if values.size == 1 
            result = values[0]
            self.my_each do |element|
                result = yield(result, element)
            end
            return result
        elsif values.size == 0 
            result = self[0]
            self[1..-1].my_each do |element|
                result = yield(result, element)
            end
            return result
        else
            puts "Expected 0 or 1 argument"
        end
    end
    
end

procac = Proc.new {|a| a = a*2}

puts [5,6,7,8,9,10].my_map(procac)