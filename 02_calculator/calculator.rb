def add(num_one, num_two)
    num_one + num_two
end

def subtract(num_one, num_two)
    num_one - num_two
end

def sum(array)
    array.sum
end

def multiply(*numbers)
    total = 1
    numbers.each { |n| total = total * n }
    total
end 

def power(number, power)
    number**power
end

def factorial(number)
    total = 1
    if number == 0 
        return total
    end
    number.downto(1).reduce(:*)
end 