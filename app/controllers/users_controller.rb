class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
    before_action :authenticate_user!
    
    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
          if @user.save
       redirect_to user_path(@user) 
          end
    end

    def edit
    end

    def update

       if  @user && @user.update(user_params)
        redirect_to user_path(@user)
       else
        redirect_to 
       end
    end
      
  def destroy
    @user.destroy
  end

    private

    def set_user
        @user = User.find_by(id: params[:id])
        
    end

    def user_params
        params.require(:user).permit(:name, :goal)
    end


end




 