class PostsController < ApplicationController
before_action :check_session, only: [:search, :search_tag]

  def index
  @posts = BlogPost.all
    blog_count = BlogPost.all.where("lower(title) LIKE? OR lower(summary) LIKE? OR lower(content) LIKE?","%#{params[:search]}%".downcase,"%#{params[:search]}%".downcase,"%#{params[:search]}%".downcase).order('id desc').count
    if blog_count>0 
      if params[:search]!=""
          @result = BlogPost.all.where("lower(title) LIKE? OR lower(summary) LIKE? OR lower(content) LIKE?","%#{params[:search]}%".downcase,"%#{params[:search]}%".downcase,"%#{params[:search]}%".downcase).order('id desc')
          @notice= "Showing #{blog_count} Search Result"
        else
          redirect_to index_path
        end

    else
      @result = BlogPost.all.order('id desc')
      @notice= "No Search Result"
    end
  end

  def index_tag
    tag_id=params[:search_tag][:tag_id]
    tag=Tag.find(tag_id)
    tag_count=BlogPost.find_by_sql( ["SELECT distinct(blog_posts.*) FROM blog_posts INNER JOIN tag_blogs ON blog_posts.id = tag_blogs.blog_post_id WHERE tag_blogs.tag_id=? OR lower(blog_posts.summary) LIKE? OR lower(blog_posts.content) LIKE? order by blog_posts.id desc", tag_id,"%#{tag.tag_name}%".downcase,"%#{tag.tag_name}%".downcase] ).count 
    if tag_count>0 
      if params[:search_tag][:tag_id]!=""
          @result = BlogPost.find_by_sql( ["SELECT distinct(blog_posts.*) FROM blog_posts INNER JOIN tag_blogs ON blog_posts.id = tag_blogs.blog_post_id WHERE tag_blogs.tag_id=? OR lower(blog_posts.summary) LIKE? OR lower(blog_posts.content) LIKE? order by blog_posts.id desc", tag_id,"%#{tag.tag_name}%".downcase,"%#{tag.tag_name}%".downcase] )
          @notice= "Showing #{tag_count} Search Result"
        else
          redirect_to index_path
        end

    else
      @result = Tag.find(tag_id).blog_posts.order('id desc')
      @notice= "No Search Result"
    end
  end

  def search
  	@posts = BlogPost.all
  	blog_count = BlogPost.all.where("lower(title) LIKE? AND user_id=? OR lower(summary) LIKE? AND user_id=? OR lower(content) LIKE? AND user_id=?","%#{params[:search]}%".downcase,"#{@current_user.id}","%#{params[:search]}%".downcase,"#{@current_user.id}","%#{params[:search]}%".downcase,"#{@current_user.id}").order('id desc').count
  	if blog_count>0 
  		if params[:search]!=""
      		@result = BlogPost.all.where("lower(title) LIKE? AND user_id=? OR lower(summary) LIKE? AND user_id=? OR lower(content) LIKE? AND user_id=?","%#{params[:search]}%".downcase,"#{@current_user.id}","%#{params[:search]}%".downcase,"#{@current_user.id}","%#{params[:search]}%".downcase,"#{@current_user.id}").order('id desc')
      		@notice= "Showing #{blog_count} Search Result"
        else
        	redirect_to blog_posts_path
        end

    else
    	@result = BlogPost.all.where("#{@current_user.id}").order('id desc')
    	@notice= "No Search Result"
    end
  end

  def search_tag
    tag_id=params[:search_tag][:tag_id]
    tag=Tag.find(tag_id)
    tag_count=BlogPost.find_by_sql( ["SELECT distinct(blog_posts.*) FROM blog_posts INNER JOIN tag_blogs ON blog_posts.id = tag_blogs.blog_post_id WHERE tag_blogs.tag_id=? AND blog_posts.user_id=? OR lower(blog_posts.summary) LIKE? AND blog_posts.user_id=? OR lower(blog_posts.content) LIKE? AND blog_posts.user_id=? order by blog_posts.id desc", tag_id,"#{@current_user.id}","%#{tag.tag_name}%".downcase,"#{@current_user.id}","%#{tag.tag_name}%".downcase,"#{@current_user.id}" ] ).count
    if tag_count>0 
      if params[:search_tag][:tag_id]!=""
          @result = BlogPost.find_by_sql( ["SELECT distinct(blog_posts.*) FROM blog_posts INNER JOIN tag_blogs ON blog_posts.id = tag_blogs.blog_post_id WHERE tag_blogs.tag_id=? AND blog_posts.user_id=? OR lower(blog_posts.summary) LIKE? AND blog_posts.user_id=? OR lower(blog_posts.content) LIKE? AND blog_posts.user_id=? order by blog_posts.id desc", tag_id,"#{@current_user.id}","%#{tag.tag_name}%".downcase,"#{@current_user.id}","%#{tag.tag_name}%".downcase,"#{@current_user.id}" ] )
          @notice= "Showing #{tag_count} Search Result"
        else
          redirect_to blog_posts_path
        end

    else
      @result = Tag.find(tag_id).blog_posts.where("user_id=?","#{@current_user.id}")
      @notice= "No Search Result"
    end
  end

  def downcase
    @title = BlogPost.select  
  end

end
