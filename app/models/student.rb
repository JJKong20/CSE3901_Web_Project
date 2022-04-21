class Student < ApplicationRecord
  has_many :studentOnTeam
  has_many :worksOn
  has_many :evaluates
  has_many :teams, through: :studentOnTeam
  has_many :projects, through: :worksOn
  #has_many :projects, through: :evaluates
  belongs_to :admin

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
  format: { with: VALID_EMAIL_REGEX }, 
  uniqueness: true
  has_secure_password(validations: false)
  validates :password, presence: true, length: { minimum: 5 }, on: :signup
end
