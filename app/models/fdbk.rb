class Fdbk < ApplicationRecord
    belongs_to :journey_detail
    

    validates :description, presence: true, length: {minimum: 15}
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
