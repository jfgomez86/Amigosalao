class Game < ActiveRecord::Base
  attr_accessible :run_date

  validates :run_date, presence: true

  has_many :secret_friendships

  before_create :create_secret_friendships

  def create_secret_friendships
    people = Person.all
    people_ids = people.map(&:id)
    people.each do |person|
      friend_id = (people_ids - [ person.id ]).shuffle.first
      people_ids.delete(friend_id)

      self.secret_friendships.build(person_id: person.id,
                                    friend_id: friend_id)
    end
  end
end
