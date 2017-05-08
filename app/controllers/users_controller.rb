class UsersController < ApplicationController

 before_action :set_user, only: [:edit,:update,:show]
  def index
    @users = User.paginate(page: params[:page],per_page: 5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success]="Welcome to Pancho's Blog #{@user.username}"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
    @users_articles = @user.articles.paginate(page:params[:page],per_page:5) if  @user.articles.count  > 0
  end

  def update
    if User.update(user_params)
      flash[:success] = "User was successfully updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:username,:email,:password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
