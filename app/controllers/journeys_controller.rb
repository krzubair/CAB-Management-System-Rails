class JourneysController < ApplicationController

    def index
        @journey_details = JourneyDetail.all
        
    end

    def new
        @journey_detail = JourneyDetail.new
    end

    def create
        @journey_detail = JourneyDetail.new(journey_detail_params)

        # byebug

        if @journey_detail.save! 
            flash[:success] = "Journey has been created"
            redirect_to journeys_path    
        else 
            flash[:alert] = "something went wring"
            render :new
        end
    end

    private

    def journey_detail_params
        params.require(:journey_detail).permit(:date_of_journey,:start_time, :end_time, :start_loc,:end_loc,:adv_amt,:no_of_passngr, :driver_id, :taxi_detail_id)
    end


end
