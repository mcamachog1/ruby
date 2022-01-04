array = [
    [1, 2, 3],
    [2, 2, 2],
    [3, 2, 1]  
]

def asteriscos(array)
    array.map do |row|
        str1 = "*"*row[0]
        str2 = "*"*row[1]
        str3 = "*"*row[2]
        new_row = "#{str1} #{str2} #{str3}"     
    end
end

def asteriscos2(array)
    array.map do |row|
        row.map { |number| "*" * number}.join(" ")
    end
end