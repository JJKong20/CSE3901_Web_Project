class Evaluate < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :project, optional: true
  belongs_to :sender, :class_name => 'Student', optional: true
  belongs_to :recipient, :class_name => 'Student', optional: true
end
