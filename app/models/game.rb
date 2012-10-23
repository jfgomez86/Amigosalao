class Game < ActiveRecord::Base
  attr_accessible :run_date

  validates :run_date, presence: true
end
