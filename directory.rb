def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice."
    students = []
    name = gets.chomp
    while !name.empty? do
        students << {name: name, cohort: :November}
        puts "Now we have #{students.count} students"
        name = gets.chomp
    end
   students
end

def print_header
    puts "The students of `Villians Academy"
    puts "-------------"
end

def print(students)
    students.each_with_index do |student, index|
        puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort"     
    end
end

def filter_by_initial_letter(students)
    puts "Please type in a letter to filter by first name."
    filter_letter = gets.chomp
    while !filter_letter.empty? do
    selected_students = students.select { |student| student[:name].start_with?(filter_letter)}
        selected_students.each_with_index do |student, index|
        puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort"     
        end
    filter_letter = gets.chomp
    end
end

def filter_by_names_under_12_characters(students)
    selected_students = students.select { |student| student[:name].size <= 12 }
    print selected_students
end


def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
filter_by_initial_letter(students)
filter_by_names_under_12_characters(students)
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