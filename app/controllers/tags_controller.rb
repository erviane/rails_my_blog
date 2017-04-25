class TagsController < ApplicationController
  before_action :check_session
  before_action :set_tag, only: [:edit, :update, :destroy]

  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  # GET /tags/1
  # GET /tags/1.json

  # GET /tags/new
  def new
    @tag = Tag.new
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  # POST /tags.json
  def create
    @tag = Tag.new(tag_params)
      if @tag.save
        flash[:success] = "Tag was successfully created."
        redirect_to tags_url
      else
        render :new
      end
  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
      if @tag.update(tag_params)
        flash[:success] = "Tag was successfully updated."
        redirect_to tags_url
      else
        render :edit
      end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    if @tag.destroy
    flash[:success] = "Tag was successfully destroyed."
    redirect_to tags_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:tag_name)
    end
end
