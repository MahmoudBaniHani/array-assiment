

class Task
	def initialize
		@arr_value = Array.new
	end
	def insert_into_array size
		index= 0
		while index < size
			puts "Enter Value in array:#{index}"
			@arr_value.push(gets.chomp.to_i)
			index +=1
		end
	end
	def print_array
		@arr_value.each do |element|
		  puts element
		end
	end
	def sort_array_ascending
		copy = @arr_value.sort.reverse
		puts "Afret Array Ascending :#{copy.reverse}" 
		puts "array original #{@arr_value}"
	end
	def sort_array_descending
		puts "Afret Array Descending :#{@arr_value.sort}"
		puts "array original #{@arr_value}" 
	end
	def find_max_number
		"the maxuimm number #{@arr_value.max()}"
	end 
	def find_min_number
		"the maxuimm number #{@arr_value.min()}"
	end
	def add_End
		puts "Please Enter your number at the end"
		number_add = gets.chomp.to_i
		puts "befor Array :#{print_array}" 
		@arr_value.push(number_add)
		puts "afret Array :#{@arr_value}" 
	end
	def add_first
		puts "Please Enter your number at add first"
		number_add = gets.chomp.to_i
		puts "befor Array :#{print_array}"
		@arr_value.unshift(number_add)
		puts "afret Array :#{@arr_value}" 
	end
	def add_any_index
		puts "Please Enter your number: "
		number_add = gets.chomp.to_i
		puts "Please Enter your index you went to add"
		index = gets.chomp.to_i

		puts "befor Array :#{print_array}"
		@arr_value.insert(index,number_add)
		puts "afret Array :#{@arr_value}"
	end
	def delete_at
		puts "befor Array :#{@arr_value}"
		puts "Please Enter your index you went delete"
		index = gets.chomp.to_i
		@arr_value.delete_at(index)
		puts "afret Array :#{@arr_value}" 
	end
	def remove_duplicated
		puts "befor duplicated :#{@arr_value}"
		puts "After duplicated #{@arr_value.uniq}" 
	end
	def array_as_string
		puts @arr_value.join(',')
	end
	def print_number_bigers_number
		puts "Please Enter your number"
		number = gets.chomp.to_i
		 for element in @arr_value do
		  	if element<number
		  		next
		  	else
		  		puts element
		  	end
		end 
	end
end