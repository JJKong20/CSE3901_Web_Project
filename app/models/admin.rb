class Admin < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :fname, presence: true
    validates :lname, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
    format: { with: VALID_EMAIL_REGEX }, 
    uniqueness: true
    has_secure_password
    validates :password, presence: true, length: {minimum: 5}
end
