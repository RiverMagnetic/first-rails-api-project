## Project Idea

My first-full-stack-project idea is simple. It's a list app.

I love lists. I'm really excited about learning through my idea's simplicity, and the infinite possibilities for building upon it.

I am looking forward to building something I would want to use, and as I move beyond the MVP, I hope to appeal to other list lovers as well.

## The tables I will need

I will need a user table, which will probably look like this when it's created in code:
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

I will also need an items table with a column each for:
- item names
- descriptions
- user_id


## Routes for Items Controller

|     Path      | Request Type |    Controller     | Controller#Action |                                    Controller Directions                                     |
|:-------------:|:------------:|:-----------------:|:-----------------:|:--------------------------------------------------------------------------------------------:|
|   `/items`   |     GET      | Item Controller |      `items#index`      |                                    _Retrieve all items._                                    |
|   `/items`   |     POST     | Item Controller |     `items#create`      |                   _Make a new item, using data provided by the request._                     |
| `/items/:id` |  PATCH/PUT   | Item Controller |     `items#update`      | _Change the properties of the item with the given id, using data provided by the request._ |
| `/items/:id` |    DELETE    | Item Controller |     `items#destroy`     |                           _Destroy the item with the given id._         |

## Routes for Users Controller

| Request Type   | Path                   | Controller#Action |
|----------------|------------------------|-------------------|
| POST           | `/sign-up`             | `users#signup`    |
| POST           | `/sign-in`             | `users#signin`    |
| DELETE         | `/sign-out`            | `users#signout`   |
| PATCH          | `/change-password`     | `users#changepw`  |

## Third paty APIs?

I don't plan to use any on this project, at least on the first iterations.

## 