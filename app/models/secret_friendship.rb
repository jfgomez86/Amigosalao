class SecretFriendship < ActiveRecord::Base
  attr_accessible :friend_id, :person_id, :game_id

  validates :friend_id, presence: true,
    uniqueness: {scope: [:person_id, :game_id]}

  validates :person_id, presence: true
  validates :game_id, presence: true

  belongs_to :person
  belongs_to :game
  belongs_to :friend, class_name: "Person", foreign_key: "friend_id"
end
