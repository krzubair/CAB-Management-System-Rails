class JourneyDetail < ApplicationRecord
    has_one :bill_detail
    has_many :passngrs
    has_many :fdbks
    

    validates :date_of_journey, presence: true
    validates :start_time, presence: true
    validates :start_loc, presence: true
    validates :end_loc, presence: true
    validates :adv_amt, presence: true
    validates :no_of_passngr, presence: true

end
