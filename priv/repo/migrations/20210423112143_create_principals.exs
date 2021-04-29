defmodule SalesTest.Repo.Migrations.CreatePrincipals do
  use Ecto.Migration

  def change do
    create table(:principals) do
      add :title_id, :string
      add :ordering, :string
      add :imdb_name_id, :string
      add :category, :string
      add :job, :string
      add :characters, :string

      timestamps()
    end

  end
end
