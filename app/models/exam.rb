class Exam < ActiveRecord::Base
  belongs_to :exam_category
  belongs_to :course
  has_many   :grades
  has_many   :students,   :through => :grades
end
