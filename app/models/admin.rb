class Admin < ApplicationRecord

    before_save { self.email = email.downcase }
    validates :fname, presence: true, length: { maximum: 50 }
    validates :lname, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
    format: { with: VALID_EMAIL_REGEX },
    length: { maximum: 255 },
    uniqueness: true
    has_secure_password
    validates :password, presence: true, length: {minimum: 5}
    has_many :students
end
