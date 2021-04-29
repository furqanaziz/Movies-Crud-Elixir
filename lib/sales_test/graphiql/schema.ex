defmodule TestGraphql.GraphQL.Schema do

  use Absinthe.Schema
  alias SalesTest.HandleDb




  query do
    @desc "provide data based on search(optional) sorted(optional) and pageNo(it is optional by default it is 1), it will return data
      EX:
      query{
        listMoviesApi ( sortedBy: 'asc'
        sortedItem: 'weighted_average_vote'  searchBy: '20,000 Leagues Under the Sea' pageNo: 1){
        count
        firstPage
        count
        hasNext
        hasPrev
        last
        list{
          avgRating
          director
          duration
          genre
          title
          totalVote
          year
        }
        nextPage
        prevPage
        page
        }
      }"
    field :list_movies_api, :somedata do
      arg :sorted_by, :string , default_value: " "
      arg :sorted_item, :string , default_value: " "
      arg :search_by, :string, default_value: " "
      arg :page_no, :integer , default_value: 1
      resolve fn _, %{page_no: page_no, sorted_by: sorted_by, search_by: search_by, sorted_item: sorted_item}, _ ->
        result = HandleDb.get_movie(sorted_by, search_by, sorted_item, page_no)
        {:ok, result}
      end
    end

    @desc "provide data based on pageNo(it is optional by default it is 1), it will return all data
      EX:
      query{
        moviesDetailApi(pageNo: 1){
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
        }"
    field :movies_detail_api, :ALLdata do
      arg :page_no, :integer , default_value: 1
      arg :title, :string, default_value: " "
      resolve fn _, %{page_no: page_no, title: title}, _ ->
        result = HandleDb.get_allmovie(page_no, title)
        {:ok, result}
      end
    end
  end

  object :ALLdata do
    field :count, :integer
    field :first_page, :integer
    field :has_next, :boolean
    field :has_prev, :boolean
    field :last, :integer
    field :list, list_of(:movie_detail)
    field :next_page, :integer
    field :page, :integer
    field :prev_page, :integer
  end

  object :somedata do
    field :count, :integer
    field :first_page, :integer
    field :has_next, :boolean
    field :has_prev, :boolean
    field :last, :integer
    field :list, list_of(:movie)
    field :next_page, :integer
    field :page, :integer
    field :prev_page, :integer
  end

  object :movie_detail do
    field :title, :string
    field :actors, :string
    field :avg_vote, :string
    field :budget, :string
    field :country, :string
    field :date_published, :string
    field :description, :string




    field :language, :string
    field :metascore, :string
    field :original_title, :string
    field :production_company, :string

    field :reviews_from_critics, :string
    field :reviews_from_users, :string

    field :title_id, :string

    field :usa_gross_income, :string
    field :votes, :string
    field :worldwide_gross_income, :string
    field :writer, :string

    field :year, :string
    field :genre, :string
    field :duration, :string
    field :director, :string

   end


   object :movie do
    field :title, :string
    field :avg_rating, :string
    field :year, :string
    field :genre, :string
    field :duration, :string
    field :director, :string
    field :total_vote, :string


   end

end
