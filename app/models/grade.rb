class Grade < ActiveRecord::Base
  belongs_to :student
#   validates :student, uniqueness: true
  belongs_to :exam
  validates_numericality_of :score
  
end
