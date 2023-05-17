class BillDetail < ApplicationRecord
    belongs_to :journey_detail

    validates :bill_date, presence: true
    validates :total_amt, presence: true
end
