class Pencil
  attr_accessor :paper, :dura

  def initialize(paper:, dura:)
    @paper = ''
    @dura = dura
  end

  def write
    puts "Begin writing"
    msg = gets.chomp
    @paper += msg
  end


end
