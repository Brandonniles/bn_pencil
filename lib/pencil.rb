class Pencil
  attr_accessor :paper, :dura, :length, :eraser

  def initialize(paper:, dura:, length:, eraser:)
    @paper = ''
    @dura = dura
    @length = length
    @eraser = eraser
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
    rev = @paper.split(' ').reverse.join(' ')
    str.length.times { rev.insert(rev.index(str), '~') }
    rev.slice!(str)
    revx2 = rev.split(' ').reverse.join(' ')
    revx2.gsub!('~', ' ')
    @paper = revx2
  end

  def stats
    puts "\nPaper says: #{@paper}"
    puts "Durability: #{@dura}"
    puts "Length: #{@length}"
    puts "Eraser: #{@eraser}"
  end

end
