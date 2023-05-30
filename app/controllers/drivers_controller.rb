class DriversController < ApplicationController
    before_action :set_driver, only: [:show,:edit,:update]

    def index
        @driver = Driver.all
    end

    def new
        @driver = Driver.new
    end

    def create
        @driver = Driver.new(driver_params)

        if @driver.save!
            flash[:notice] = "Driver is registered Successfully"
            redirect_to root_path
        else
            flash[:failure] = "Something went wrong"
            render new_driver_path
        end    
    end

    def show
        # @driver = Driver.find(params[:id])
    end

    def edit

    end

    def update
        if @driver.update(driver_params)
            flash[:notice] = "Driver Updated successfully"
            redirect_to driver_path(@driver)
        else
            flash.now[:alert] = "enter Valid details"
            render :edit
        end    
    end


    private

    def driver_params
        params.require(:driver).permit(:name, :gender, :phone_no, :age, :dl_no, :password)
    end

    def set_driver
        @driver = Driver.find(params[:id])
    end
    
end
