class JourneyDetail < ApplicationRecord
    has_one :bill_detail
    has_many :passngrs
    has_many :fdbks
    
    belongs_to :driver

    after_save :deactivate_driver, if: :completed?

   

    validates :date_of_journey, presence: true
    validates :start_time, presence: true
    validates :start_loc, presence: true
    validates :end_loc, presence: true
    validates :adv_amt, presence: true
    validates :no_of_passngr, presence: true

    private
  
    def deactivate_driver
      driver.update(active: false)
    end

    def completed?
      end_time.present? && Time.now >= end_time
    end
end
