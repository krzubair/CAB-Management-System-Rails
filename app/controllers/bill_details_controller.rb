class BillDetailsController < ApplicationController
  before_action :set_journey_detail

  def new
    @bill_detail = BillDetail.new
  end

  

  def create
    @bill_detail = BillDetail.new(bill_detail_params)
    @bill_detail.journey_detail = @journey_detail
    calculate_bill_amount

    if @bill_detail.save!
      flash[:success] = "Bill Detail created successfully."
      redirect_to journey_bill_detail_path(journey_id: @journey_detail.id, id: @bill_detail.id)

    else
      render :new
    end
  end

  def show
    @bill_detail = BillDetail.find(params[:id])
  end

  private

  def set_journey_detail
    @journey_detail = JourneyDetail.find(params[:journey_id])
  end

  def bill_detail_params
    params.require(:bill_detail).permit(:bill_date)
  end

  def calculate_bill_amount
    # Calculate the bill amount based on the time of journey or distance
    # Example calculation:
    time_diff = @journey_detail.end_time - @journey_detail.start_time
    # distance = calculate_distance_between_locations(@journey_detail.start_loc, @journey_detail.end_loc)
    @bill_detail.total_amt = time_diff.abs/10  + @journey_detail.adv_amt 
    
     
  end

  # Helper method to calculate the distance between two locations
  # def calculate_distance_between_locations(start_loc, end_loc)
  #   # Implement the logic to calculate the distance between two locations
  #   # You can use external APIs or any other method based on your requirements
  #   # Return the calculated distance

  # end

  
end
