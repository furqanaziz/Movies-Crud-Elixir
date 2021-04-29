defmodule SalesTest.Test do
  # use ExUnit.Case
  use ExUnit.Case, async: false

  setup do
    # Explicitly get a connection before each test
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(SalesTest.Repo)
  end


  describe "Get movie" do
    test ".Get all movies data" do
      query = """
      {
        moviesDetailApi{

      count
          firstPage
          count
          hasNext
          hasPrev
          last

          list{
            actors
            avgVote
            budget
            country
            datePublished
            description
            director
            duration
            genre
            language
            metascore
            originalTitle
            productionCompany
            reviewsFromCritics
            reviewsFromUsers
            title
            titleId
            usaGrossIncome
            votes
            worldwideGrossIncome
            writer
            year
          }
          nextPage
          prevPage
          page
        }
      }
      """
    result = Absinthe.run(query, TestGraphql.GraphQL.Schema, context: %{pageNo: 1})
    assert result == {:ok, %{
      "data": %{
        "moviesDetailApi" => %{
          "count" => 0,
          "firstPage" => 1,
          "hasNext" => false,
          "hasPrev" => false,
          "last" => 0,
          "list" => [],
          "nextPage"=> 2,
          "page"=> 1,
          "prevPage"=> 0
        }
      }
    }
  }


    end

    test ".Get some data" do
      query = """
      {
        listMoviesApi{
        count
          firstPage
          count
          hasNext
          hasPrev
          last

          list{
            title
          }
          nextPage
          prevPage
          page
        }
      }
      """
      result = Absinthe.run(query, TestGraphql.GraphQL.Schema, context: %{pageNo: 1})
      assert result == {:ok, %{
        "data": %{
          "listMoviesApi" => %{
            "count" => 0,
            "firstPage" => 1,
            "hasNext" => false,
            "hasPrev" => false,
            "last" => 0,
            "list" => [],
            "nextPage"=> 2,
            "page"=> 1,
            "prevPage"=> 0
          }
        }
      }
    }


    end

  end

end
