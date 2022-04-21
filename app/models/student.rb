class Student < ApplicationRecord
  has_many :studentOnTeam
  has_many :worksOn
  has_many :evaluates
  has_many :teams, through: :studentOnTeam
  has_many :projects, through: :worksOn
  #has_many :projects, through: :evaluates
  belongs_to :admin

  validates :email, presence: true, uniqueness: true
end
