class Pencil
  attr_accessor :paper, :dura, :length, :eraser_dura

  def initialize(paper:, dura:, length:, eraser_dura:)
    @paper = ''
    @dura = dura
    @length = length
    @eraser_dura = eraser_dura
    @dura_max = dura
  end

  def write
    puts "\nBegin writing"
    msg = gets.chomp
    update_dura(msg)
  end

  def sharpen
    @length > 0 ? (@dura = @dura_max) && (@length -= 1) : "Cannot sharpen, length is 0."
  end

  def update_dura(msg)
    string = []
    msg.chars.each do |chr|
      @dura > 0 ? string << chr : string << " "
      @dura -= 1 if chr =~ /[a-z]/
      @dura -= 2 if chr =~ /[A-Z]/
    end
    @paper += string.join
    puts "You wrote: #{string.join}"
  end

  def erase
    puts "type string to be erased"
    str = gets.chomp
    rev_str = str.reverse
    rev_paper = @paper.reverse
    if @eraser_dura > str.length
      str.length.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
      rev_paper.slice!(rev_str)
      revx2 = rev_paper.reverse
      @eraser_dura -= str.length
      @paper = revx2
    elsif (0...@eraser_dura).include?(str.length)
      delete_chars = str.length - @eraser_dura
      # add a space(s)
      delete_chars.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
      # delete a character(s)
      rev_paper.slice!(rev_paper.index(rev_str), delete_chars)
      # update eraser_dura
      @eraser_dura -= delete_chars
      revx2 = rev_paper.reverse
      @paper = revx2
    else
      puts 'Eraser is empty'
    
  end


end

def stats
  puts "\nPaper says: #{@paper}"
  puts "Durability: #{@dura}"
  puts "Length: #{@length}"
  puts "Eraser Durability: #{@eraser_dura}"
end

end
