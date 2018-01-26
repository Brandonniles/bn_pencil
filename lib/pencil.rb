class Pencil
  attr_accessor :paper

  def initialize(paper:)
    @paper = ''
  end

  def write
    puts "Begin writing"
    msg = gets.chomp
    @paper += msg
  end


end
