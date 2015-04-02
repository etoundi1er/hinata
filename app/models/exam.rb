class Exam < ActiveRecord::Base
  belongs_to :exam_category
  belongs_to :course
end
