class ExamCategory < ActiveRecord::Base
  has_many :exams
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
