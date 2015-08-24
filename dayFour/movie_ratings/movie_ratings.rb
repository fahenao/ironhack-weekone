

class FileReader
		  	
		def initialize(titles_file)
		    @titles_file = titles_file
		end

 		def read_file
   	 		IO.read(@titles_file).split().map(&:chomp)
  		end
end


FileReader.new("movies.txt").read_file