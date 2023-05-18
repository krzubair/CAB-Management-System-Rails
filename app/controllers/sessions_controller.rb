class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Signed in successfully"
      redirect_to user
    else
      flash.now[:alert] = "Invalid email or password" 
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    
    redirect_to root_path, flash: { notice: "Signed out successfully." }
  end



  # def session_params
  #   params.require(:session).permit(:email,:password)
  # end

end
