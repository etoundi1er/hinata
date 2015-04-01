class Guardian < ActiveRecord::Base
  has_many :family_members
  has_many :students, :through => :family_members
  accepts_nested_attributes_for :students
  
  def full_name
    "#{last_name} #{first_name}".titleize
  end
  
end
