defmodule SalesTest.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title_id, :string
      add :title, :string
      add :original_title, :string
      add :year, :string
      add :date_published, :string
      add :genre, :string
      add :duration, :string
      add :country, :string
      add :language, :string
      add :director, :string
      add :writer, :string
      add :production_company, :string
      add :actors, :text
      add :description, :text
      add :avg_vote, :string
      add :votes, :string
      add :budget, :string
      add :usa_gross_income, :string
      add :worldwide_gross_income, :string
      add :metascore, :string
      add :reviews_from_users, :string
      add :reviews_from_critics, :string

      timestamps()
    end

  end
end
