class Grade < ActiveRecord::Base
  belongs_to :student
  belongs_to :exam
  validates :student, presence: true
#   validates :student, uniqueness: true
  validates_numericality_of :score
  
end
