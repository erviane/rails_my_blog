class PagesController < ApplicationController
	def index
    @blog=BlogPost.all.order('id desc')
		#@blog=BlogPost.joins(:user).where(user_id:1).order('id')	#select * from blog join user on blog.author_id=user.id where blog.author_id='1' order by blog.id desc limit 1
  	end

  	def about
  		@about=User.first
  	end

  	def post
      @blog=BlogPost.joins(:user).where(user_id:1).find(params[:id])
  	end

  	def contact
  	end

  	def login
      @login = User.new
  	end

    def show
       @blog = BlogPost.find(params[:id])
       render 'pages/post'
    end
end
