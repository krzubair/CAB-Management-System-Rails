class FdbksController < ApplicationController

    before_action :set_journey_detail, :set_current_user, only: [:new, :create, :show]

    def new
        @fdbk = Fdbk.new
    end

    def create
        @fdbk = Fdbk.new(fdbk_params)
        @fdbk.email = @current_user.email
        @fdbk.journey_detail_id = @journey_detail.id

        if @fdbk.save!
            flash[:success] = "feedback successfully submitted"
            redirect_to journey_fdbk_path(journey_id: @journey_detail.id, id: @fdbk.id)

        else 
             flash[:failure] = "something went wrong" 
             render :new  
        end
    end

    def show
        @fdbk = Fdbk.find(params[:id])
    end

   

    private

    def set_current_user
        @current_user = User.find(session[:user_id])
    end

    def set_journey_detail
        @journey_detail = JourneyDetail.find(params[:journey_id])
    end

    def fdbk_params
        params.require(:fdbk).permit(:description)
    end
    
end
