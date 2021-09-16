@students = []

def interactive_menu
  loop do 
    print_menu
    process(gets.chomp)
  end
end

def input_students
    puts "Please enter the names of the students, their cohort, country of birth and age seperated by a comma and a single space."
    puts "To finish, just hit return twice."
    @students = []
    input = gets.chomp.split(", ")
    if input.empty?
        puts "There are no students."
    end
    while !input.empty? do
        @students << {name: input[0], cohort: input[1], country: input[2], age: input[3]}
        if @students.count == 1
            puts " Now we have #{@students.count} student."
        else
        puts "Now we have #{@students.count} students."
        end
    input = gets.chomp.split(", ")
    end
end

def print_header
    puts "The students of `Villians Academy"
    puts "-------------".center(35)
end

def print_student_list
    @students.each_with_index do |student, index|
        print "#{index + 1} #{student[:name]}, #{student[:cohort]} cohort, #{student[:country]}, age #{student[:age]}.\n"   
    end
end

def print_footer
    puts "Overall, we have #{@students.count} great students."
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
    print_header
    print_student_list
    print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit 
    else 
      puts "I don't know what you meant, try again."
    end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
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
#     puts selected_students
# end

# def filter_by_cohort(students)
#     puts "Please enter the student cohort."
#     filter_cohort = gets.chomp
#     while !filter_cohort.empty? do
#         selected_students = students.select { |student| student[:cohort] == filter_cohort }
#         selected_students.each_with_index do |student, index|
#         puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort"     
#         end
#     filter_cohort = gets.chomp
#     end
# end

interactive_menu
# filter_by_cohort(students)
# filter_by_initial_letter(students)
# filter_by_names_under_12_characters(students)


# # students = [
# # {name: "Dr. Hannibal Lecter", cohort: :November},
# # {name: "Darth vader", cohort: :November},
# # {name: "Nurse Ratched", cohort: :November},
# # {name: "Michael Corleone", cohort: :November},
# # {name: "Alex DeLarge", cohort: :November},
# # {name: "The Wicked Witch of the West", cohort: :November},
# # {name: "Terminator", cohort: :November},
# # {name:"Freddy Krueger", cohort: :November},
# # {name:"The Joker", cohort: :November},
# # {name:"Joffrey Baratheon", cohort: :November},
# # {name:"Norman Bates", cohort: :November}
# # ]