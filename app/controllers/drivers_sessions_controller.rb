class DriversSessionsController < ApplicationController
    def new
    end

    def create
        driver = Driver.find_by(dl_no: params[:session][:dl_no])

        if driver && driver.authenticate(params[:session][:password])
            session[:driver_id] = driver.id
            flash[:notice] = "Logged in successfully"
            redirect_to driver
        else
            flash.now[:alert] = "Invalid DL_no or password"
            render :new
        end    

    end

    def destroy

        session[:driver_id] = nil
        redirect_to root_path, flash: {notice: "Driver logged out Successfully"}

    end
end
