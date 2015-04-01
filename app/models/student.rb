class Student < ActiveRecord::Base
  has_many :family_members
  has_many :guardians, :through => :family_members
  has_many :attendances
  belongs_to :group
  has_many :courses, :through => :student_course
  
#   accepts_nested_attributes_for :guardians
  
  def full_name
    "#{last_name} #{first_name}".titleize
  end
  
end
