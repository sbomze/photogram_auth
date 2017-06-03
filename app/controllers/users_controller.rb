class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show

    if current_user.nil? != true
      @user = User.find(current_user.id)
      render("users/show.html.erb")
    else
      redirect_to("/")
    end
  end

  def likes

    if current_user.nil? != true
      @user = User.find(current_user.id)
      render("users/my_likes.html.erb")
    else
      redirect_to("/")
    end
  end

end
