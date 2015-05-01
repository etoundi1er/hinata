class Period < ActiveRecord::Base
  has_many :attendance_registers
end
