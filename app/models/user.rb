class User < ActiveRecord::Base
  validates :first_name, :last_name, :username, presence: true
end
