require 'date'

class Post
	attr_accessor :title, :date, :text, :sponsored

	def initialize (title, date, text, sponsored = nil)
		@title = title
		@date  = date
		@text  = text
		@sponsored = sponsored
	end
end


class Blog

	attr_accessor :posts
	def initialize
			@posts = [ ]
	end


	def add_post(post)
			@posts << post
	end

	def sort_posts
			@posts = @posts.sort { |x,y| y.date <=> x.date }
	end


	def publish_front_page

		sort_posts

			@posts.each do |i|
				if i.sponsored
					puts "*******#{i.title}********"
				else
					puts "#{i.title}"
				end
				
				puts "**************"
				puts "#{i.text}"
				puts "----------------"
			end
	end

end


blog = Blog.new

blog.add_post Post.new("Title1", Date.new(2015, 8, 3), "This is the text of the first post")
blog.add_post Post.new("Title2", Date.new(2015, 8, 4), "This is the text of the second post")
blog.add_post Post.new("Title3", Date.new(2015, 8, 5), "This is the text of the third post", true)

blog.publish_front_page