class Course < ActiveRecord::Base
  has_many :students :through => :groups
  has_many :groups
end
