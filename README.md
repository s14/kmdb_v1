The objective of this exercise is to get more familiar with the Ruby we use to work with our database tables.

## Creating, Reading, Updating, and Deleting records through Rails Console

Almost every action that our web applications will support boil down to simply **c**reating, **r**eading, **u**pdating, or **d**eleting (**CRUD** for short) information from a table.

For example, when you tweet, Twitter is creating a row in their Statuses (that's what they internally call a tweet -- the model is a class called `Status`) table with your message in the  `text` column and your user ID number in the `user_id` column (and a few other things like location, etc).

If someone favorites your tweet, Twitter is creating a row in their Favorites table with your tweet's `status_id` and that person's `user_id`. Un-favoriting would destroy this row. And so on.

It is therefore essential that we be able to CRUD rows in our tables in our sleep. Also, we should know how to query our tables for information so that we can show the right things to our users when asked. Fortunately, Rails provides us with an easy Ruby interface to our database: the `ActiveRecord::Base` class.

### CRUD with Ruby Cheatsheet

Remember, you have the [CRUD with Ruby Cheatsheet][2]. If you haven't already, at some point, create a new throwaway app and type along with it to make sure you have a handle on how to create a table and add data to it. Add multiple rows to the table, update them, count them, destroy them; get a feel for all the operations. Feel free to use something other than the `Instructor` example provided; for example, think of a table you are going to need in your app idea.

**Please Note:**

Any time you run a `rails <something>` command, like `rails server`, `rails console`, `rails generate ...`, you must be on the Command Line, not in IRB or Rails Console. The `rails` instruction is a Command Line program like `cd` or `ls`; it is not actually Ruby.

When you are in Terminal, always be aware of whether you are in IRB or actually at a Command Line prompt. Use `exit` if you are in IRB or Rails Console to return to the Command Line, or simply open a new Terminal tab or window.

You must also be within your application's root folder whenever you try executing a `rails` command (except `rails new`, of course).

## Pulling It All Together

**Fork** and *then* clone this repository:

https://github.com/s14/kmdb_v1

In this app, I have done a bit more to extend the Movie Database app we started in class. The application now has directors, actors, and roles in addition to movies. A "role" is a particular character played in a particular movie by a particular actor -- thus, it has columns `character_name`, `movie_id`, and `actor_id`.

#### Setup

 - `cd` into the application's root folder.
 - `bundle install`
 - `rake db:migrate` to create tables -- I've already set up migrations to create movies, directors, actors, and roles tables.
 - `rake db:seed` to populate the tables with some initial data -- I've written some Ruby to pull in some movies from IMDB. This simply saves us the trouble of having to add new rows through Console before we get to what we want, which is to practice using them.

#### Explore

Examine `config/routes.rb`. For each route you discover, follow through the RCAV flow to explore what I've already done. Open each URL in your browser and observe what happens.

Basically, for each table, I have set up an index page to list all the rows. The index pages are complete. I used some basic Bootstrap styles. Explore the view templates.

I also stubbed out a `show` action for each table, whose job is supposed to be to look up a single row and display its details. Right now the `show` actions don't work.

#### Your first task

Add the missing logic into the `show` method for each of the four table controllers (movies, directors, actors, roles).

You need to plug in the information from the variable segment in the route to find the correct row in the table.

If you want to, you can add some additional HTML to the `show.html.erb` view templates to make the results look prettier, but you don't have to. I threw in a basic `<pre>` tag just to get some output to show up, which is something I do often while developing.

#### Your second task

Make `/movies` and `/roles` more helpful. Currently, they are displaying ID numbers for directors (on `/movies`), actors and movies (on `/roles`). Our users don't care about ID numbers.

Instead, display the names of directors and actors, and the titles of movies. You can do this by looking up the corresponding rows in the appropriate tables with the ID numbers. Then retrieve whatever attribute is better to display in the view.

#### Your third task

I set up five questions for you to answer with Ruby under the URLs `/q1`, `/q2`, etc.

The routes and views are complete. But the logic for each method in `QuestionsController` is missing.

Write Ruby in each controller method to load the correct data into an instance variable for displaying in the view. I completed the first question already as an example.

  [1]: https://github.com/s14/fortune_teller
  [2]: https://lanternhq.com/1/courses/140/resources/1293-crud-with-ruby-cheatsheet
