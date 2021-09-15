def input_students
    puts "Please enter the names of the students, their cohort start month, country of birth and age seperated by a comma and a single space"
    puts "To finish, just hit return twice."
    students = []
    input = gets.chomp.split(", ")
    while !input.empty? do
        students << {name: input[0], cohort: input[1], country: input[2], age: input[3]}
        puts "Now we have #{students.count} students"
    input = gets.chomp
    end
   students
end

#Add more information: hobbies, country of birth and `age`, etc.

def print_header
    puts "The students of `Villians Academy"
    puts "-------------"
end

def print(students)
    students.each_with_index do |student, index|
        puts "#{index + 1} #{student[:name]}, #{student[:cohort]} cohort, #{student[:country]}, age #{student[:age]}"     
    end
end

# def filter_by_initial_letter(students)
#     puts "Please type in a letter to filter by first name."
#     filter_letter = gets.chomp
#     while !filter_letter.empty? do
#     selected_students = students.select { |student| student[:name].start_with?(filter_letter)}
#         selected_students.each_with_index do |student, index|
#         puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort"     
#         end
#     filter_letter = gets.chomp
#     end
# end

# def filter_by_names_under_12_characters(students)
#     selected_students = students.select { |student| student[:name].size <= 12 }
#     print selected_students
# end


def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
# filter_by_initial_letter(students)
# filter_by_names_under_12_characters(students)
print_footer(students)

# students = [
# {name: "Dr. Hannibal Lecter", cohort: :November},
# {name: "Darth vader", cohort: :November},
# {name: "Nurse Ratched", cohort: :November},
# {name: "Michael Corleone", cohort: :November},
# {name: "Alex DeLarge", cohort: :November},
# {name: "The Wicked Witch of the West", cohort: :November},
# {name: "Terminator", cohort: :November},
# {name:"Freddy Krueger", cohort: :November},
# {name:"The Joker", cohort: :November},
# {name:"Joffrey Baratheon", cohort: :November},
# {name:"Norman Bates", cohort: :November}
# ]