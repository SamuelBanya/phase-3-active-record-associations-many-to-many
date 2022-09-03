class Review < ActiveRecord::Base
  belongs_to :game
  # NEW:
  # This is used so that we can include the relationship to the 'User' class instance / 'users' table:
  belongs_to :user
end
