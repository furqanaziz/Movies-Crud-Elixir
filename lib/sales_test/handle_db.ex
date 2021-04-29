defmodule SalesTest.HandleDb do
  import Ecto.Query, warn: false

  alias SalesTest.Repo
  alias SalesTest.Movie_db
  # alias InpowerComment.Comment
  # alias InpowerComment.Comments
  # alias InpowerComment.Replies
  # alias InpowerComment.Reply
  # alias InpowerComment.Media_db
  # alias InpowerComment.Media
  # #new changing

  def get_allmovie(page_no, title) do
    Movie_db.get_all_movie(page_no, title)
  end




  def get_movie(sorted_by, search_by, sorted_item, page_no) do

    case search_by do
      " " ->
        case sorted_item do
          " " ->
            case sorted_by do
              " " ->
                Movie_db.get_movie(page_no)
              _ ->
                Movie_db.get_movie(page_no)
            end
          _ ->
            case sorted_by do
              " " ->
                Movie_db.get_movie(page_no)
              _ ->
                Movie_db.get_movie(sorted_by, sorted_item, page_no)
            end
        end
      _ ->
          case sorted_item do
            " " ->
              case sorted_by do
                " " ->
                  Movie_db.get_movie(search_by, page_no)
                _ ->
                  Movie_db.get_movie(search_by, page_no)
              end
            _ ->
              case sorted_by do
                " " ->
                  Movie_db.get_movie(search_by, page_no)
                _ ->
                  Movie_db.get_movie(sorted_by, sorted_item, search_by, page_no)
              end
          end
    end
  end
end
