# SalesTest

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`
  * visit the link given below for Graphql API Playground

Now you can visit [`localhost:4000/graphiql`](http://localhost:4000/graphiql) from your browser.


# Test Cases
  *  Run this commend to test cases `mix test test/test.ex`
  *  test cases written in test/test.ex

# CSV to Postgresql data
  * when you run this command `mix ecto.setup` it will automatically seeds DB
  * convert CSV to DB function locatted in priv/repo/seeds.exs
  * place unzip folder that contain 4 csv files outside the project folder
    
# Graphql API
  * when you visit `localhost:4000/graphiql` after install all dependencies and setup ecto.
  click on schema green button on right top to see documentation 
   
  * you will also find example Query to run in graphql API

