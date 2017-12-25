class Employee < ActiveRecord::Base
  has_many :courses
  has_many :groups
  has_many :students, :through => :groups
  
  def to_param
    "#{id}-#{last_name.parameterize}"
  end
end
