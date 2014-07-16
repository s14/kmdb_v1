class QuestionsController < ApplicationController
  def question_1
    # How many movies are in the database?

    # Your Ruby goes here.

    @number_of_movies = Movie.count
  end

  def question_2
    # In what year was the oldest movie on the list released?

    # Your Ruby goes here.

    @year_of_oldest_movie = Movie.order("year").first.year
  end

  def question_3
    # How many movies does Steven Spielberg have on the list?

    # Your Ruby goes here.

    spielberg = Director.find_by(:name => "Steven Spielberg")
    films = Movie.where(:director_id => spielberg.id)

    @number_of_movies_directed_by_spielberg = films.count
  end

  def question_4
    # What is the most number of movies any single director has on the list?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    # Director.where(:id => )

    @most_number_of_movies_by_a_single_director = 0

    Director.all.each do |the_director|
      current_count = Movie.where(:director_id => the_director.id).count
      if current_count > @most_number_of_movies_by_a_single_director
        @most_number_of_movies_by_a_single_director = current_count
      end
    end
  end

  def question_5
    # What is the most recent movie on our list that Jodie Foster appeared in?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    the_actor_id = Actor.find_by(:name => "Jodie Foster").id
    jodies_movie_ids = Role.where(:actor_id => the_actor_id).pluck(:movie_id)
    the_movies = Movie.where(:id => jodies_movie_ids)

    @most_recent_movie_for_foster = the_movies.order("year DESC").first.title
  end
end






