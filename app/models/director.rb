class Director < ActiveRecord::Base
  validates :name, :uniqueness => true

  def movies
    # Returns all my movies
  end
end
