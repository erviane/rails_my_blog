class CommentsController < ApplicationController

  def index
      flash[:danger]="Sorry, this post uncommentable"
      redirect_to detail_blog_path(params[:blog_post_id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @blog_post = BlogPost.find(params[:blog_post_id])
    if @blog_post.commentable
      @comment = @blog_post.comments.create(params[:comment].permit(:name, :message))
      redirect_to(:back)
    else
      flash[:danger]="Sory, this post uncommentable"
      redirect_to(:back)
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @blog_post = BlogPost.find(params[:blog_post_id])
    @comment = @blog_post.comments.find(params[:id])
    @comment.destroy
    redirect_to(:back)
  end

 
end
