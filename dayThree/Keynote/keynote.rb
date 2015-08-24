require 'terminfo'

class FileReader

end

class SlideMaker
  attr_accessor :string_array

  #reads the text
    def text_reader
      @arr = IO.read("slides.txt")
      text_splitter
    end

    #Return an array of just strings to print
    def text_splitter
      @string_array = @arr.split("\n----\n").to_a
    end
end

class ShowSlide

  def initialize(string_array)
    @string_array = string_array
  end

#creates 12 text breaks
  def spacer
    s = 1
    num = 12
      while   s < num do
      puts " "
      s += 1
    end
  end

  # def create_spaces
  #   12.times do |space|
  #     puts "\n"
  #   end
  # end

#
  def create_all_slides
    @string_array.each do |item|
      spacer
      puts @string_array[0]
      spacer
    end
  end

#
  def create_all_slides_array
    all_of_the_slides_array = create_all_slides
    puts all_of_the_slides_array
  end



    def show_slide
    end

end

my_db = SlideMaker.new
string_array = my_db.text_reader

my_showtime = ShowSlide.new(string_array)
my_showtime.create_all_slides_array