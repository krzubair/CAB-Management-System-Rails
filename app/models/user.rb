class User < ApplicationRecord

    has_secure_password

    validates :name, presence: true, length: { minimum: 3 }
    validates :address, presence: true
    validates :phone_no, presence:true, length: { minimum: 10}
    validates :gender, presence:true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }
end
