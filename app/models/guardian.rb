class Guardian < ActiveRecord::Base
  validates :last_name, :phone, presence: true
  validates :phone, uniqueness: true
  has_many :family_members
  has_many :students, :through => :family_members
  
  def full_name
    "#{last_name} #{first_name}".titleize
  end
  
  def to_param
    "#{id}-#{full_name.parameterize}"
  end
  
end
