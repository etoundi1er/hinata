class Period < ActiveRecord::Base
  has_many :attendance_registers
  validates :weekday, :start_time, :end_time, :period_title, presence: true
end
