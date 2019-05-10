def input_students

	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"

	students = []
	name = gets.chomp

	while !name.empty? do 
		puts "which cohort are you in?"
		cohort = gets.chomp
		if cohort != ""
			students << {name: name, cohort: cohort.to_sym}
		else students << {name: name, cohort: :none_selected}
		end
		if students.count > 1 
			puts "Now we have #{students.count} students"
		else puts "Now we have #{students.count} student"
		end
		name = gets.chomp
	end
		# return the array of students
	return students
end

def print_header 
	puts "The students of Villains Academy"
	puts "------------"
end

def print(students)
	counter = 0
	while counter < students.count do
		 puts "#{students[counter][:name]} (#{students[counter][:cohort]} cohort)"
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
	puts "Overall, we have #{students.count} great students"
end

def group_by_cohort(students)
	cohort_groups = {}

	students.each do |x| 
		
		cohorts = x[:cohort]
		name = x[:name]

		if cohort_groups[cohorts] == nil
			cohort_groups[cohorts] = []
		end
		cohort_groups[cohorts].push(name)
		
	end
	puts cohort_groups

end

students = input_students
group_by_cohort(students)
# print_header
# print(students)
# print_footer(students)