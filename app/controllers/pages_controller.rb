class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def edit
    # after log in
      # if the @user == uniquecode
        # render the edit page
      # else
        # @user goes back to the home page
        # unprocessable entity


  end

  def new
  end

  
end
