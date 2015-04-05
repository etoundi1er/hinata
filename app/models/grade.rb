class Grade < ActiveRecord::Base
  belongs_to :student
  belongs_to :exam
  belongs_to :course
  validates :student, presence: true
  validates :student, uniqueness: true
end
