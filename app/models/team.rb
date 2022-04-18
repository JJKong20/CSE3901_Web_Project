class Team < ApplicationRecord
  has_many :studentOnTeam
  has_many :submissions
  has_many :students, through: :studentOnTeam
  has_many :projects, through: :submissions
end
