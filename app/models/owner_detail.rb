class OwnerDetail < ApplicationRecord

    has_many :taxi_details

    validates :owner_name, presence: true
    validates :owner_adhar, presence: true
    validates :owner_address, presence: true


end
