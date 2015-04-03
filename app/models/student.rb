class Student < ActiveRecord::Base
  validates :first_name, :last_name, :username, :date_of_birth, :gender, :group_id, :enrollment_date, presence: true
  validates :username, uniqueness: true
 
  has_many :attendances
  belongs_to :group
  has_many :courses, :through => :groups
  has_many :grades
  has_many :exams, :through => :grades
  
  has_many :family_members
  has_many :guardians, :through => :family_members
  accepts_nested_attributes_for :guardians,
            :reject_if => lambda { |attrs|
                              attrs.all? { |key, value| value.blank? } 
                            }
  
  def full_name
    "#{last_name} #{first_name}".titleize
  end
  
  def with_blank_guardians(n = 1)
    n.times do
      guardians.build
    end
    self
  end
  
end
