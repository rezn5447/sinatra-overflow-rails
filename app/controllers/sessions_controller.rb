class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
      session[:id] = @user.id
      redirect_to users_url(@user)
    else
      render 'new'
    end
  end

  def destroy
  end
end
