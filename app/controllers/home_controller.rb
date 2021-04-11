class HomeController < ApplicationController
  def index

  end

  def about
    
  end

  def show
    @user = User.find_by(id: params[:id])
    
  end
end
