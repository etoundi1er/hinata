class Group < ActiveRecord::Base
  validates :group_name, :group_code, presence: true
  has_many :students
  has_many :courses
  has_many :attendance_registers
  has_many :periods, through: :attendance_registers
  has_many :attendances, through: :attendance_registers
end
