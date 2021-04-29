defmodule SalesTest.Movie do
  use Ecto.Schema
  import Ecto.Changeset
  alias SalesTest.Rating

  schema "movies" do
    field :actors, :string
    field :avg_vote, :string
    field :budget, :string
    field :country, :string
    field :date_published, :string
    field :description, :string
    field :director, :string
    field :duration, :string
    field :genre, :string
    field :language, :string
    field :metascore, :string
    field :original_title, :string
    field :production_company, :string
    field :reviews_from_critics, :string
    field :reviews_from_users, :string
    field :title, :string
    field :title_id, :string
    field :usa_gross_income, :string
    field :votes, :string
    field :worldwide_gross_income, :string
    field :writer, :string
    field :year, :string

    timestamps()

  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title_id, :title, :original_title, :year, :date_published, :genre, :duration, :country, :language, :director, :writer, :production_company, :actors, :description, :avg_vote, :votes, :budget, :usa_gross_income, :worldwide_gross_income, :metascore, :reviews_from_users, :reviews_from_critics])
    |> validate_required([:title_id, :title, :original_title, :year, :date_published, :genre, :duration, :country, :language, :director, :writer, :production_company, :actors, :description, :avg_vote, :votes, :budget, :usa_gross_income, :worldwide_gross_income, :metascore, :reviews_from_users, :reviews_from_critics])
  end
end
