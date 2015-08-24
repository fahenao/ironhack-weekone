require 'pry'

class Blog
		attr_accessor :blog

		def initialize
				@posts = []
		end

		def add_post(post)
				@posts << post
		end

		def sort_posts
				@posts = @posts.sort_by {|x| x.date}
		end

		def create_front_page
				#Da formato
				blog.each do |post|

				puts "#{post.title}"
				puts "******************"
				puts post.text
				puts "---------------------"
		end

		def publish_front_page
				sort_posts
				pages = (@posts.length / POST_LIMIT.to_f).ceil


				#Muestra la pagina
				IO.write("blog.txt", @blog)
		end

end



class Post

		attr_accessor :title, :date, :text

		def initialize(title, date, text)
			@title = title
			@date = date
			@text = text
		end

end

blog = Blog.new

post1 = Post.new("Day1", :date, "Este es el primer post")
post2 = Post.new("Day2", :date, "Este es el segundo post")
post3 = Post.new("Day3", :date, "Este es el tercer post")



blog.add_post(post1)

blog.create_front_page

puts blog.all_posts