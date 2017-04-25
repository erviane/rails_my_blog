class UsersController < ApplicationController
  before_action :check_session, except: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_to do |format|
    format.html
    format.csv do
      headers['Content-Disposition'] = "attachment; filename=\"user-list\""
      headers['Content-Type'] ||= 'text/csv'
    end
  end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def new_user_admin
    @user = User.new
  end       


  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params) 
      if @user.save
        flash[:success] = "User was successfully created. please login."
        redirect_to login_url
      else
        render :new
      end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
      if @user.update_attributes(user_params)
        flash[:success] = "User was successfully updated."
        redirect_to user_path(@user)
        else
          render :edit
      end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if @user.destroy
    flash[:success] = "User was successfully destroyed."
    redirect_to users_url
    end
  end

  def import
    file= params[:file]
    CSV.foreach(file.path, headers: true) do |row|
        user_hash = row.to_hash
        @user = User.new(name: user_hash["name"], email: user_hash["email"], password: user_hash["password"], password_confirmation: user_hash["password"] )
        if !@user.valid?
            @validation=false
        end
    end
    if @validation==false
        flash[:danger] = "CSV failed to upload. One or some data invalid."
        redirect_to new_user_admin_url
    else
      CSV.foreach(file.path, headers: true) do |row|
        user_hash = row.to_hash
        @user = User.create(name: user_hash["name"], email: user_hash["email"], password: user_hash["password"], password_confirmation: user_hash["password"] )
        
      end
        flash[:success] = "CSV successfully uploaded"
        redirect_to users_url
    end
  end


  def export_user
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :is_admin )
    end
end
