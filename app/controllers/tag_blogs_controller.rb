class TagBlogsController < ApplicationController
  before_action :set_tag_blog, only: [:show, :edit, :update, :destroy]

  # GET /tag_blogs
  # GET /tag_blogs.json
  def index
    @tag_blogs = TagBlog.all
  end

  # GET /tag_blogs/1
  # GET /tag_blogs/1.json
  def show
  end

  # GET /tag_blogs/new
  def new
    @tag_blog = TagBlog.new
  end

  # GET /tag_blogs/1/edit
  def edit
  end

  # POST /tag_blogs
  # POST /tag_blogs.json
  def create
    @tag_blog = TagBlog.new(tag_blog_params)

    respond_to do |format|
      if @tag_blog.save
        format.html { redirect_to @tag_blog, notice: 'Tag blog was successfully created.' }
        format.json { render :show, status: :created, location: @tag_blog }
      else
        format.html { render :new }
        format.json { render json: @tag_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_blogs/1
  # PATCH/PUT /tag_blogs/1.json
  def update
    respond_to do |format|
      if @tag_blog.update(tag_blog_params)
        format.html { redirect_to @tag_blog, notice: 'Tag blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_blog }
      else
        format.html { render :edit }
        format.json { render json: @tag_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_blogs/1
  # DELETE /tag_blogs/1.json
  def destroy
    @tag_blog.destroy
    respond_to do |format|
      format.html { redirect_to tag_blogs_url, notice: 'Tag blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_blog
      @tag_blog = TagBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_blog_params
      params.require(:tag_blog).permit(:blog_id, :tag_id)
    end
end
