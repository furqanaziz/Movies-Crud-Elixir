defmodule SalesTest.Movie_db do

  import Ecto.Query, warn: false

  alias SalesTest.Movie
  alias SalesTest.Repo
  alias SalesTest.Rating
  alias SalesTest.Pagination



  def get_all_movie(page_no, title) do
    IO.inspect title
    case title do
      " " ->
        query =
            from(c in "movies",
            full_join: r in "ratings",
            on: c.title_id == r.title_id,
            select: %{
                  title: c.title,
                  year: c.year,
                  genre: c.genre,
                  duration: c.duration,
                  director: c.director,
                  writer: c.writer,
                  worldwide_gross_income: c.worldwide_gross_income,
                  votes: c.votes,
                  usa_gross_income: c.usa_gross_income,
                  title_id: c.title_id,
                  reviews_from_users: c.reviews_from_users,
                  reviews_from_critics: c.reviews_from_critics,
                  production_company: c.production_company,
                  original_title: c.original_title,
                  metascore: c.metascore,
                  language: c.language,
                  description: c.description,
                  date_published: c.date_published,
                  country: c.country,
                  budget: c.budget,
                  avg_vote: c.avg_vote,
                  actors: c.actors,
                  avg_rating: r.weighted_average_vote,
                  total_vote: r.total_votes
                }
            )

          Pagination.page(query, page_no, per_page: 10)
      _ ->
      query =
            from(c in "movies",
            full_join: r in "ratings",
            on: c.title_id == r.title_id,
            where: c.title == ^title,
            select: %{
                  title: c.title,
                  year: c.year,
                  genre: c.genre,
                  duration: c.duration,
                  director: c.director,
                  writer: c.writer,
                  worldwide_gross_income: c.worldwide_gross_income,
                  votes: c.votes,
                  usa_gross_income: c.usa_gross_income,
                  title_id: c.title_id,
                  reviews_from_users: c.reviews_from_users,
                  reviews_from_critics: c.reviews_from_critics,
                  production_company: c.production_company,
                  original_title: c.original_title,
                  metascore: c.metascore,
                  language: c.language,
                  description: c.description,
                  date_published: c.date_published,
                  country: c.country,
                  budget: c.budget,
                  avg_vote: c.avg_vote,
                  actors: c.actors,
                  avg_rating: r.weighted_average_vote,
                  total_vote: r.total_votes
                }
            )

          Pagination.page(query, page_no, per_page: 10)

    end
  end

  def get_movie(sorted_by, sorted_item, page_no) do
    case sorted_by do
      "asc" ->

        case sorted_item do

          "title" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              order_by: [asc: c.title], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "weighted_average_vote" ->
              query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              order_by: [asc: r.weighted_average_vote ], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "year" ->
                query =
                from(c in "movies",
                full_join: r in "ratings",
                on: c.title_id == r.title_id,
                order_by: [asc: c.year], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
                select: %{
                      title: c.title,
                      year: c.year,
                      genre: c.genre,
                      duration: c.duration,
                      director: c.director,
                      avg_rating: r.weighted_average_vote,
                      total_vote: r.total_votes
                    }
                )
                Pagination.page(query, page_no, per_page: 10)

        end
      "desc" ->
        case sorted_item do

          "title" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              order_by: [desc: c.title], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "weighted_average_vote" ->
              query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              order_by: [desc: r.weighted_average_vote], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "year" ->
                query =
                from(c in "movies",
                # [{:desc,m.avg_vote}]
                full_join: r in "ratings",
                on: c.title_id == r.title_id,
                order_by: [desc: c.year], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
                select: %{
                      title: c.title,
                      year: c.year,
                      genre: c.genre,
                      duration: c.duration,
                      director: c.director,
                      avg_rating: r.weighted_average_vote,
                      total_vote: r.total_votes
                    }
                )
                Pagination.page(query, page_no, per_page: 10)

        end
    end



  end

  def get_movie(sorted_by, sorted_item, search_by, page_no) do
    IO.inspect sorted_item
    case sorted_by do
      "asc" ->
        case sorted_item do
          "title" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
              order_by: [asc: c.title], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "weighted_average_vote" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
              order_by: [asc: r.weighted_average_vote], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "year" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
              order_by: [asc: c.year], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                title: c.title,
                year: c.year,
                genre: c.genre,
                duration: c.duration,
                director: c.director,
                avg_rating: r.weighted_average_vote,
                total_vote: r.total_votes
                }
              )
              Pagination.page(query, page_no, per_page: 10)

        end
      "desc" ->
        case sorted_item do

          "title" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
              order_by: [desc: c.title], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "weighted_average_vote" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
              order_by: [desc: r.weighted_average_vote], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                    title: c.title,
                    year: c.year,
                    genre: c.genre,
                    duration: c.duration,
                    director: c.director,
                    avg_rating: r.weighted_average_vote,
                    total_vote: r.total_votes
                  }
              )
              Pagination.page(query, page_no, per_page: 10)

          "year" ->
            query =
              from(c in "movies",

              full_join: r in "ratings",
              on: c.title_id == r.title_id,
              where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
              order_by: [desc: c.year], # or sorted_by r.weighted_average_vote or sorted_by c.date_published],
              select: %{
                title: c.title,
                year: c.year,
                genre: c.genre,
                duration: c.duration,
                director: c.director,
                avg_rating: r.weighted_average_vote,
                total_vote: r.total_votes
                }
              )
              Pagination.page(query, page_no, per_page: 10)

        end

    end
  end

  def get_movie(search_by, page_no) do

    query =
          from(c in "movies",

          full_join: r in "ratings",
          on: c.title_id == r.title_id,
          where: c.director == ^search_by or c.title == ^search_by or c.actors == ^search_by,
          select: %{
                title: c.title,
                year: c.year,
                genre: c.genre,
                duration: c.duration,
                director: c.director,
                avg_rating: r.weighted_average_vote,
                total_vote: r.total_votes
              }
            )
            Pagination.page(query, page_no, per_page: 10)

  end

  def get_movie(page_no) do


    query =
          from(c in "movies",

          full_join: r in "ratings",
          on: c.title_id == r.title_id,
          select: %{
                title: c.title,
                year: c.year,
                genre: c.genre,
                duration: c.duration,
                director: c.director,
                avg_rating: r.weighted_average_vote,
                total_vote: r.total_votes
              }
            )
            Pagination.page(query, page_no, per_page: 10)
  end

end
