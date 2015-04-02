class Student < ActiveRecord::Base
  validates :first_name, :last_name, :username, :date_of_birth, :gender, :group_id, :enrollment_date, presence: true
  validates :username, uniqueness: true
  has_many :family_members
  has_many :guardians, :through => :family_members
  has_many :attendances
  belongs_to :group
  has_many :courses, :through => :groups
  
#   accepts_nested_attributes_for :guardians
  
  def full_name
    "#{last_name} #{first_name}".titleize
  end
  
end
