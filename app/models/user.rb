class User < ActiveRecord::Base
  # This is to establish the 'reviews' table as the 'join table':
  has_many :reviews
  # This is so that we can utilize the '.games()' method as a result of the association
  # with the 'reviews' table:
  has_many :games, through: :reviews
end
