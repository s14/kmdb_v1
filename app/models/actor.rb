class Actor < ActiveRecord::Base
  validates :name, :uniqueness => true

  def roles
    # Returns all my roles
  end

  def movies
    # Returns all my movies
  end
end
