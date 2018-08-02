## Project Idea

My first-full-stack-project idea is simple. It's a list app.

I love lists. I'm really excited about learning through my idea's simplicity, and the infinite possibilities for building upon it.

I am looking forward to building something I would want to use, and as I move beyond the MVP, I hope to appeal to other list lovers as well.


## Planning

I decided to go with something simple for my first full-stack project, in order to balance trying to get this done in under a week with my other commitments. Luckily, simplcity doesn't have to mean boring, and can actually be a fun starting place from which to continue exploring and building!


I began by creating a schedule, and then writing user stories that matched the project requirements and my ideas for a first iteration. You can see both of these on the Trello board I made for this project: https://trello.com/b/sqkzgniO/list-project


I created an ERD, which is very simple, but will need to be changed as future iterations become more complex: https://github.com/RiverMagnetic/first-rails-api-project/blob/master/erd.jpg.


I thought about the tables and columns I would need and decided I would need a user table, looking something like this:
```ruby
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :token, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end 
```

I decided I would also need an items table with a column each for:
- item names
- descriptions
- user_id


I then decided to make some notes for myself about what routes I would need for my items controller:

|     Path      | Request Type |    Controller     | Controller#Action |                                    Controller Directions                                     |
|:-------------:|:------------:|:-----------------:|:-----------------:|:--------------------------------------------------------------------------------------------:|
|   `/items`   |     GET      | Items Controller |      `items#index`      |                                    _Retrieve all items._                                    |
|   `/items`   |     POST     | Items Controller |     `items#create`      |                   _Make a new item, using data provided by the request._                     |
| `/items/:id` |  PATCH/PUT   | Items Controller |     `items#update`      | _Change the properties of the item with the given id, using data provided by the request._ |
| `/items/:id` |    DELETE    | Items Controller |     `items#destroy`     |                           _Destroy the item with the given id._         |


... and for my users controller:

| Request Type   | Path                   | Controller#Action |
|----------------|------------------------|-------------------|
| POST           | `/sign-up`             | `users#signup`    |
| POST           | `/sign-in`             | `users#signin`    |
| DELETE         | `/sign-out`            | `users#signout`   |
| PATCH          | `/change-password`     | `users#changepw`  |


## Third party APIs?

I don't plan to use any on this project, at least on the first few iterations.


## Technologies used

This project uses Ruby, Rails, and PostgreSQL, and communicates with a front-end Javascript app I built. You can find the front-end repo here: https://github.com/RiverMagnetic/first-full-stack-project-client, and the deployed site here: https://rivermagnetic.github.io/first-full-stack-project-client/


## Development Process and Problem Solving

I like to set personal deadlines that would be a stretch to meet to keep myself motivated and challenged. General Assembly's suggested schedule for the project is really valuable, so I decided to make that the basis for my personal schedule, while attempting to finish the project in 3 days. I ended up with 27 of the 35 items on my schedule done in that time, but since the project was incomplete by the end of this deadline, in the second iteration of my schedule I honed in on requirements rather than putting learning first.

I began by scaffolding an items table. I then wrote Ruby code to only allow signed-in users to access items, and add a POST action for items. I figured out that were issues in the scaffold caused by a misspelling and regenerated it. 

When I ran into issues, I was proactive. I solved problems by looking through solved issues, posting issues in the issue queue, asking questions of fellow students and experienced developers, using binding.pry and my local server, testing things in my rails console, testing my requests with curl scripts, and checking out the output of my local server.

## Problems I Plan to Solve in Future Iterations

1. I want users to be able to view each other's lists but not edit them.
2. I want multiple users to choose to be able to share a list and edit the shared list.
