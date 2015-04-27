class Employee < ActiveRecord::Base
  has_many :courses
  has_many :groups
  has_many :students :through => :groups
end
