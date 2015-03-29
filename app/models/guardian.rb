class Guardian < ActiveRecord::Base
  has_many :family_members
  has_many :students, :through => :family_members
  
  def full_name
    "#{last_name} #{first_name}".titleize
  end
  
end
