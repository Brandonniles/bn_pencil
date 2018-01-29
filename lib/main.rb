require_relative './pencil'
require_relative 'write_methods'
require_relative 'durability_methods'

pencils = []


while true
  puts "\nWelcome to Digi-Pencil: (type a number for your selection and hit enter)"
  puts "1. Create a Pencil"
  puts "2. Write"
  puts "3. Sharpen"
  puts "4. Erase"
  puts "5. Edit"
  puts "6. Pencil Stats"
  puts "0. Exit Program"

  input = gets.chomp

  case input
  when '1' then create_pencil(pencils)
  when '2' then pencils.length == 0 ? np_err : pencils.last.write
  when '3' then pencils.length == 0 ? np_err : pencils.last.sharpen
  when '4' then pencils.length == 0 ? np_err : pencils.last.erase
  when '5' then pencils.length == 0 ? np_err : pencils.last.edit
  when '6' then pencils.length == 0 ? np_err : pencils.last.stats
  when '0' then abort
  else
  puts "unrecognizable command"
  end

end
