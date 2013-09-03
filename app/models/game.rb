class Game < ActiveRecord::Base
  attr_accessible :score, :user_id, :user
  belongs_to :user

end
