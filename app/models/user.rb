class User < ActiveRecord::Base
  validates :first_name, :last_name, :username, :date_of_birth, :gender, presence: true
  validates :username, uniqueness: true
  
  def full_name
    "#{last_name} #{first_name}"
  end
  
end