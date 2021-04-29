defmodule SalesTest.Name do
  use Ecto.Schema
  import Ecto.Changeset

  schema "names" do
    field :bio, :string
    field :birth_details, :string
    field :birth_name, :string
    field :children, :string
    field :date_of_birth, :string
    field :date_of_death, :string
    field :death_details, :string
    field :divorces, :string
    field :height, :string
    field :name, :string
    field :name_id, :string
    field :place_of_birth, :string
    field :place_of_death, :string
    field :reason_of_death, :string
    field :spouses, :string
    field :spouses_of_children, :string
    field :spouses_string, :string

    timestamps()
  end

  @doc false
  def changeset(name, attrs) do
    name
    |> cast(attrs, [:name_id, :name, :birth_name, :height, :bio, :birth_details, :date_of_birth, :place_of_birth, :death_details, :date_of_death, :place_of_death, :reason_of_death, :spouses_string, :spouses, :divorces, :spouses_of_children, :children])
    |> validate_required([:name_id, :name, :birth_name, :height, :bio, :birth_details, :date_of_birth, :place_of_birth, :death_details, :date_of_death, :place_of_death, :reason_of_death, :spouses_string, :spouses, :divorces, :spouses_of_children, :children])
  end
end
