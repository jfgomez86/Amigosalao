class Game < ActiveRecord::Base
  attr_accessible :run_date

  validates :run_date, presence: true

  has_many :secret_friendships

  before_create :create_secret_friendships

  def create_secret_friendships
    people = Person.all
    people.each do |person|
      self.secret_friendships.build(person_id: person.id,
                                    friend_id: rand(1000))
    end
  end
end
