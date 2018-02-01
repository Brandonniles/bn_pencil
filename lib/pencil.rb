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

  def complete_deletion(rev_str, rev_paper)
    rev_str.length.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
    rev_paper.slice!(rev_str)
    @eraser_dura -= rev_str.length
    @paper = rev_paper.reverse
  end

  def partial_deletion(rev_str, rev_paper)
    # add a space(s)
    @eraser_dura.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
    # delete a character(s)
    rev_paper.slice!(rev_paper.index(rev_str), @eraser_dura)
    # update eraser_dura
    @eraser_dura = 0
    @paper = rev_paper.reverse
  end

  def erase
    puts "type string to be erased"
    str = gets.chomp
    rev_str = str.reverse
    rev_paper = @paper.reverse
    complete_deletion(rev_str, rev_paper) if @eraser_dura >= str.length
    partial_deletion(rev_str, rev_paper) if (0...str.length).include?(@eraser_dura)
    puts 'Eraser is empty' if @eraser_dura <= 0
  end

  def edit
    puts "What word would you like to put in the 'left-most' blank space?"
    word = gets.chomp
    insert_index = @paper.index('    ')
    word.length.times do |i|
      if @paper[insert_index+(i+1)] == ' '
        @paper.insert(insert_index + (i+1), word[i])
        @paper.slice!(insert_index + (i+2), 1)
      else
        @paper.insert(insert_index + (i+1), '@')
        @paper.slice!(insert_index + (i+2), 1)
      end
      # affect @dura
    end
  end

  def stats
    puts "\nPaper says: #{@paper}"
    puts "Durability: #{@dura}"
    puts "Length: #{@length}"
    puts "Eraser Durability: #{@eraser_dura}"
  end

end
