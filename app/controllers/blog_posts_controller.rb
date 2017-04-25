class BlogPostsController < ApplicationController
  before_action :check_session
  before_action :set_blog_id, only: [:show, :edit, :update, :destroy]

  # GET /blog_posts
  # GET /blog_posts.json
  def index
    @blog_post = BlogPost.all.where(:user_id => "#{@current_user.id}").order('id desc')
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.json
  def show
    @tag_blog=TagBlog.where(:blog_post_id => "#{@blog_post.id}")
  end

  # GET /blog_posts/new
  def new
    @blog_post = BlogPost.new
  end

  # GET /blog_posts/1/edit
  def edit
  end

  # POST /blog_posts
  # POST /blog_posts.json
  def create
    @blog_post = BlogPost.new(blogpost_params)
      if @blog_post.save
        flash[:success] = "New blog was successfully created"
        redirect_to blog_posts_url
      else
        render :new
      end
  end

  def update
      if @blog_post.update_attributes(blogpost_params)
        flash[:success] = "Blog was successfully updated."
        redirect_to blog_posts_url
        else
          render :edit
      end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.json
  def destroy
    if @blog_post.destroy
      flash[:success] = "Blog was successfully destroyed." 
      redirect_to blog_posts_url
    end
  end

  def statistic
    @most_tagged_blog = BlogPost.left_outer_joins(:tag_blogs).limit(5).order('count_tag_blogs_tag_id desc').group('blog_posts.title').count('tag_blogs.tag_id')
    @most_commented_blog = BlogPost.left_outer_joins(:comments).limit(5).order('count_comments_blog_post_id desc').group('blog_posts.title').count('comments.blog_post_id')
    @most_active_user = User.left_outer_joins(:blog_posts).limit(5).order('count_blog_posts_user_id desc').group('users.name').count('blog_posts.user_id')
    respond_to do |format|
      format.html do
        # render :statistic, layout: false
      end
      format.json do
      end
    end
    end

  #CSV.foreach(path, header: true) do |row|
  # fill
#end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_id
      @blog_post = BlogPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blogpost_params
      params.require(:blog_post).permit(:title, :summary, :content, :user_id, :title_image_url, { tag_ids:[] }, :commentable)
    end
end
