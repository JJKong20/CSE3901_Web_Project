class Project < ApplicationRecord
  has_many :submissions
  has_many :worksOns
  has_many :evaluates
  has_many :teams, through: :submissions
  has_many :students, through: :worksOns
  has_many :students, through: :evaluates
end
