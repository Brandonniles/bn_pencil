require_relative './pencil'

while true
	puts "Welcome to Digi-Pencil:"
  puts "1. Create a Pencil"
	puts "2. Write"
	puts "3. Erase"
	puts "4. Edit"
  puts "5. Pencil Stats"
	puts "0. Exit Program"

	input = gets.chomp

	case input
	when '1' then create_pencil
	when '2' then curr_pencil.write
	when '3' then curr_pencil.erase
  when '4' then curr_pencil.edit
  when '5' then curr_pencil.report
	when '0' then abort
	else
	puts "unrecognizable command"

	end

end
