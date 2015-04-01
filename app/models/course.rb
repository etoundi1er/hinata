class Course < ActiveRecord::Base
  has_many :students, :through => :student_course
  belongs_to :group
  belongs_to :course_category
end
