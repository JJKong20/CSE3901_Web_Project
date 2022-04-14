class Student < ApplicationRecord
  has_many :studentOnTeams, dependent: :destroy
  has_many :worksOns, dependent: :destroy
  has_many :evaluates, dependent: :destroy
  has_many :teams, through: :studentOnTeams
  has_many :projects, through: :worksOns
  has_many :projects, through: :evaluates
end
