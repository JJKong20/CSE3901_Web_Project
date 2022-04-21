class Project < ApplicationRecord
  has_many :submissions
  has_many :worksOn
  has_many :evaluates
  has_many :teams, through: :submissions
  has_many :students, through: :worksOn
  #has_many :students, through: :evaluates
end
