class Course < ActiveRecord::Base
  validates :course_name, :course_code, :group_id, :course_category_id, presence: true
  belongs_to :course_category
  belongs_to :group
  has_many   :students, :primary_key => :group,
                        :foreign_key => :group
#   has_many :students#, :through => :groups
#   has_many :student_courses
#   has_many :students, :through => :student_courses
  has_many :exams
end
