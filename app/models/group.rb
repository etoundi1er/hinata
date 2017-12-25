class Group < ActiveRecord::Base
  validates :group_name, :group_code, presence: true, uniqueness: true
  
  has_many :students
  has_many :courses
  has_many :attendance_registers
  has_many :periods, through: :attendance_registers
  has_many :attendances, through: :attendance_registers
  
  def to_param
    "#{id}-#{group_name.parameterize}"
  end
end
