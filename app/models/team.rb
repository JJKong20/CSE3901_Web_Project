class Team < ApplicationRecord
  has_many :studentOnTeams
  has_many :submissions, dependent: :destroy
  has_many :students, through: :studentOnTeams
  has_many :projects, through: :submissions
end
