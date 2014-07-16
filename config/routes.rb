Rails.application.routes.draw do
  root "movies#index"

  get "/movies",        :controller => "movies",    :action => "index"
  get "/movies/:id",    :controller => "movies",    :action => "show"

  get "/directors",     :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"

  get "/actors",        :controller => "actors",    :action => "index"
  get "/actors/:id",    :controller => "actors",    :action => "show"

  get "/roles",         :controller => "roles",     :action => "index"
  get "/roles/:id",     :controller => "roles",     :action => "show"

  get "/q1",            :controller => "questions", :action => "question_1"
  get "/q2",            :controller => "questions", :action => "question_2"
  get "/q3",            :controller => "questions", :action => "question_3"
  get "/q4",            :controller => "questions", :action => "question_4"
  get "/q5",            :controller => "questions", :action => "question_5"
end
