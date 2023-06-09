1. Given an array of strings, print only the strings that have exactly 4 characters.
def four(arr) 
    arr.each do |element|
        if element.length == 4
            p element
        end
    end
end

1. Start with an array of strings with a mix of uppercase and lowercase letters. Print every word in all lowercase letters.
def lowercase(arr)
    arr.each do |element|
        p element.downcase
    end
end

1. Write a method or function that removes all instances of the letter s in a string. 
The function should accept a string as an argument and return the same string with every instance of the letter s removed.
def remove_s(str)
    new = ''
    str.each do |char|
        if char != 's' && char != 'S'
            new += char
        end
    end
    p new
end

1. Start with an array of hobbies. Print out only the words that end in "ing".
def hobbies(arr)
    arr.each do |element|
        if element.end_with?("ing")
            p element
        end
    end
end

1. Start with an array of travel destinations. Print every travel destination in alphabetical order embedded in a sentence using string interpolation. 
For example, if the destination is "New York City", print something like "The next place I want to visit is New York City!" 
def travel(arr)
    arr.each do |element|
        p "The next place I want to visit is #{element}!"
    end
end

1. Given a sentence with only lowercase letters, print the same sentence with the first letter of every word capitalized. 
For example, if you were given "Turing is the best", return "Turing Is The Best" instead!
def capitalize_first(str)
    arr_str = str.split(" ")
    
    arr_str.each do |element|
        element.capitalize!
    end

    p arr_str.join("" )
end
capitalize_first("Turing is the best")

1. Write a method or function that determines how much a person will 
[pay in taxes in the United States](https://www.irs.gov/newsroom/irs-provides-tax-inflation-adjustments-for-tax-year-2022) 
based on their annual income. The method or function should accept a number representing 
the individuals annual income as an argument and return the amount they will owe in taxes for that year.
def income_tax(num)
    tax = 0

    while num > 0 do
        if num >=539900
            tax += (num-539900)*0.37
        elsif num >=215950
            tax += (num-215950)*0.35
        elsif num >= 170050
            tax += (num-170050)*0.32
        elsif num >= 89075
            tax += (num-89075)*0.24
        elsif num >= 41775
            tax += (num-41775)*0.22
        elsif num >= 10275
            tax += (num-10275)*0.12
        elsif num <= 10275
            tax += num*0.1
            num = 0
        end
    end
    return tax
end