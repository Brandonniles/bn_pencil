require_relative './pencil'


def d
  puts "What led durability will your pencil have? (must be in integer greater than 0)"
  d = gets.chomp.to_i
end

def l
  puts "What length will your pencil have? (must be in integer greater than 0)"
  l = gets.chomp.to_i
end

def e
  puts "What eraser durability will your pencil have? (must be in integer greater than 0)"
  e = gets.chomp.to_i
end

def create_pencil(pencils)
  cp = Pencil.new(paper: '', dura: d, length: l, eraser: e)
  pencils << cp
end

def np_err
  puts "\nNo pencil yet created"
  sleep(1.5)
end

# may need to keep as method for suture testing
# def p_s(pencils)
#   pencils.length == 0 ? np_err : pencils.last.stats
# end
