defmodule SalesTest.Repo.Migrations.CreateNames do
  use Ecto.Migration

  def change do
    create table(:names) do
      add :name_id, :string
      add :name, :string
      add :birth_name, :string
      add :height, :string
      add :bio, :text
      add :birth_details, :string
      add :date_of_birth, :string
      add :place_of_birth, :string
      add :death_details, :string
      add :date_of_death, :string
      add :place_of_death, :string
      add :reason_of_death, :string
      add :spouses_string, :text
      add :spouses, :string
      add :divorces, :string
      add :spouses_of_children, :string
      add :children, :string

      timestamps()
    end

  end
end
