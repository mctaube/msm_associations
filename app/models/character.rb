class Character < ApplicationRecord

  #  - movie_id: must be present
  validates :movie_id, :presence => true

  #  - actor_id: must be present
  validates :actor_id, :presence => true

  #  - name: no rules

  has_many(:movies, :class_name => "Movie", :foreign_key => "actor_id")
  has_many(:movies, :class_name => "Movie", :foreign_key => "movie_id")
  
end
