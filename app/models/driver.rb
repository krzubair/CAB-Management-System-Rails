class Driver < ApplicationRecord
    has_one :journey_detail

    has_secure_password
    
    validates :name, presence: true, length: { minimum: 3 }
    validates :gender, presence: true
    validates :phone_no, presence:true, length: { minimum: 10}
    validates :age, presence:true, numericality: { greater_than_or_equal_to: 18 }
    validates :dl_no, presence:true

    

end
