class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]
    
    def index
        @user = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save!
            flash[:notice] = "User created successfully"
            redirect_to  root_path 
        else 
            render :new       
        end

    end

    def show
        # @user = User.find(params[:id])
    end

    def edit

    end

    def update 
        if @user.update(user_params)
            flash[:success] = "User updated Successfully"
            redirect_to user_path(@user)
        else 
            flash.now[:alert] = "enter valid details"   
            render :edit
        end
    end
      
    private

    def user_params
        params.require(:user).permit(:name, :address, :phone_no, :gender, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
