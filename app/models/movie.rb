class Movie < ActiveRecord::Base
  validates :director_id, :presence => true

  def director
    # Returns the director that I belong to
  end

  def roles
    # Returns all my roles
  end

  def actors
    # Returns all my actors
  end
end
