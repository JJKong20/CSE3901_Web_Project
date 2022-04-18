class Student < ApplicationRecord
  has_many :studentOnTeam
  has_many :worksOns
  has_many :evaluates
  has_many :teams, through: :studentOnTeam
  has_many :projects, through: :worksOns
  has_many :projects, through: :evaluates
end
