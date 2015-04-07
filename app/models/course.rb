class Course < ActiveRecord::Base
  validates :course_name, :course_code, :group_id, :course_category_id, presence: true
  belongs_to :course_category
  belongs_to :group
  #   has_many   :students, :primary_key => :group_id, #I guess this isnt needed after all
#   :foreign_key => :group_id
  has_many :exams
  has_many :chapters
end
