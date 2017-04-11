class PagesController < ApplicationController
	def index
		@blog=Blog.joins(:user).where(author_id:1).order('id')	#select * from blog join user on blog.author_id=user.id where blog.author_id='1' order by blog.id desc limit 1

  	end

  	def about
  		@about=User.first
  	end

  	def post
  	end

  	def contact
  	end

  	def signin
  	end
end
