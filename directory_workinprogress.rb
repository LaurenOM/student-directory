def input_students
	max_length = "Please enter the names of the students".length
	puts "Please enter the names of the students".center(max_length)
	puts "To finish, just hit return twice".center(max_length)
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp.center(max_length)

	# while the name is not empty, repeate this code 
	while !name.empty? do 
		# add the student hash to the array 
		puts "what is your height?".center(max_length)
		cohort = gets.chomp.center(max_length)

		students << {name: name, cohort: :november }
		puts "Now we have #{students.count} students".center(max_length)
		name = gets.chomp.center(max_length)
	end
		# return the array of students
	return students
end

def print_header 
	puts "The students of Villains Academy".center(max_length)
	puts "------------".center(max_length)
end

def print(students)

	pp students
	counter = 0
	while counter < students.count do
		 puts "#{students[counter][:name]} Height: #{students[counter][:height]} (#{students[counter][:cohort]} cohort)".center(max_length)
		 counter += 1
	end
end
def print_l_only(students)
	students.each_with_index do |student, index|
		if student[:name][0] == "l"
			puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
		end
	end
end

def print_short_names(students)
	students.each_with_index do |student, index|
		if student[:name].length < 12
			puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
		end
	end
end

def print_footer(students)
	puts "Overall, we have #{students.count} great students".center(max_length)
end

students = input_students
print_header
print(students)
print_footer(students)