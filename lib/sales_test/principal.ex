defmodule SalesTest.Principal do
  use Ecto.Schema
  import Ecto.Changeset

  schema "principals" do
    field :category, :string
    field :characters, :string
    field :imdb_name_id, :string
    field :job, :string
    field :ordering, :string
    field :title_id, :string

    timestamps()
  end

  @doc false
  def changeset(principal, attrs) do
    principal
    |> cast(attrs, [:title_id, :ordering, :imdb_name_id, :category, :job, :characters])
    |> validate_required([:title_id, :ordering, :imdb_name_id, :category, :job, :characters])
  end
end
