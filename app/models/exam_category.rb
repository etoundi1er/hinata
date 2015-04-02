class ExamCategory < ActiveRecord::Base
  has_many :exams
end
