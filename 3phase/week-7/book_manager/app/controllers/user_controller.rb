class UserController < ApplicationController
  before_action :authenticate, only: [:show]
  before)action :set_user, only: [:show]

  def show
    @books = @user.books
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respomds_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html{ redirect_to 'show'}
      else

      end
    end
  end
end