
class JourneysController < ApplicationController

    def index
        @journey_details = JourneyDetail.all
        
    end

    def new
        @journey_detail = JourneyDetail.new
        @active_drivers = Driver.where(active: true)
    end

    def create
        @journey_detail = JourneyDetail.new(journey_detail_params)

        # byebug

        if @journey_detail.save! 
            flash[:success] = "Journey has been created"
            redirect_to journey_path(@journey_detail)    
        else 
            flash[:alert] = "something went wring"
            render :new
        end
    end

    def show
        @journey_detail = JourneyDetail.find(params[:id])
    end

    def complete
        @journey_detail = JourneyDetail.find(params[:id])
        @journey_detail.update(completed: true)
        @driver = Driver.find(@journey_detail.driver_id)

        @driver.update(active: true)

        redirect_to journeys_path(@journey_detail), notice: 'Journey completed successfully.'
      end
    
      

    private

    def journey_detail_params
        params.require(:journey_detail).permit(:date_of_journey,:start_time, :end_time, :start_loc,:end_loc,:adv_amt,:no_of_passngr, :driver_id, :taxi_detail_id)
    end


end
