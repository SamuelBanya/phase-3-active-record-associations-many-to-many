class Game < ActiveRecord::Base
  # NOTE: This allows us to use the '.review()' method to access all of its associated reviews:
  # NOTE: This is necessary to declare the 'join table' we need to provide for the
  # 'has_many' macro:
  has_many :reviews
  # Here we are providing the key-value pair, key: 'through' option, value: ':reviews' symbol
  # which refers to the '#reviews' method above:
  has_many :users, through: :reviews

  # NOTE: The use of the second 'has_many' macro for the ':users, through: :reviews' section
  # is to prevent us from having to write this exact SQL statement:
  # SELECT "users".*
  # FROM "users"
  # INNER JOIN "reviews"
  # ON "users"."id" = "reviews"."user_id"
  # WHERE "reviews"."game_id" = 1
end
