class Person < ActiveRecord::Base
  attr_accessible :full_name, :email

  validates :email, uniqueness: true
end
