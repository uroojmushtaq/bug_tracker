  class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update,:view_qa_projects]
skip_before_action :require_login, only: [:home, :new, :create]
#before_action :require_login, only: [:view_developers, :edit]
 def new
  @user = User.new
end

def home
end

def index
  redirect_to root_url
end

def show
end

def edit
end

def update
  if @user.update(user_params)
    redirect_to current_user, :notice => "Profile Updated!"
  end
  
else

end

def view_developers
  @users = User.where(:user_type => "developer")
end

def view_qa_list
   @users = User.where(:user_type => "qa")
end

 def view_qa_projects
 end


def create
  @user = User.new(user_params)

  if @user.save
  	login(params[:user][:email], params[:user][:password],params[:user][:name],
      params[:user][:user_type])
    redirect_to root_url, :notice => "Signed up!"
  else
    render :new
  end
end


  private

   def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:user).permit(:email, :password,
     :password_confirmation, :name, :user_type, :image)
  end
end
