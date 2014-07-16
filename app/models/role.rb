class Role < ActiveRecord::Base
  validates :movie_id, :presence => true
  validates :actor_id, :presence => true

  def actor
    # Returns the actor I belong to
  end

  def movie
    # Returns the movie I belong to
  end
end
