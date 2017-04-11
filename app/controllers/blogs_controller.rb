class BlogsController < ApplicationController
	def index
	end

	def show
		@blog=Blog.joins(:user).where(author_id:1).find(params[:id])
		render file: 'pages/post'
	end

	def new
	end

	def edit
	end
end
