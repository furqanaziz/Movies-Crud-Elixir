defmodule SalesTest.Rating do
  use Ecto.Schema
  import Ecto.Changeset
  alias SalesTest.Movie

  schema "ratings" do
    field :votes_5, :string
    field :non_us_voters_rating, :string
    field :allgenders_0age_votes, :string
    field :votes_1, :string
    field :males_30age_avg_vote, :string
    field :males_30age_votes, :string
    field :females_18age_avg_vote, :string
    field :votes_4, :string
    field :votes_8, :string
    field :total_votes, :string
    field :females_0age_votes, :string
    field :allgenders_18age_votes, :string
    field :weighted_average_vote, :string
    field :mean_vote, :string
    field :females_allages_avg_vote, :string
    field :males_18age_votes, :string
    field :males_0age_avg_vote, :string
    field :allgenders_18age_avg_vote, :string
    field :females_30age_avg_vote, :string
    field :females_18age_votes, :string
    field :votes_3, :string
    field :votes_10, :string
    field :votes_2, :string
    field :allgenders_30age_avg_vote, :string
    field :males_45age_avg_vote, :string
    field :votes_7, :string
    field :allgenders_45age_votes, :string
    field :females_45age_votes, :string
    field :top1000_voters_rating, :string
    field :males_45age_votes, :string
    field :title_id, :string
    field :females_30age_votes, :string
    field :males_allages_votes, :string
    field :us_voters_rating, :string
    field :us_voters_votes, :string
    field :median_vote, :string
    field :males_allages_avg_vote, :string
    field :males_18age_avg_vote, :string
    field :top1000_voters_votes, :string
    field :males_0age_votes, :string
    field :females_45age_avg_vote, :string
    field :allgenders_0age_avg_vote, :string
    field :allgenders_45age_avg_vote, :string
    field :females_allages_votes, :string
    field :allgenders_30age_votes, :string
    field :non_us_voters_votes, :string
    field :votes_6, :string
    field :votes_9, :string
    field :females_0age_avg_vote, :string

    timestamps()

    # belongs_to(:movies, Movie, type: :binary_id)
  end

  @doc false
  def changeset(rating, attrs) do
    rating
    |> cast(attrs, [:title_id, :weighted_average_vote, :total_votes, :mean_vote, :median_vote, :votes_10, :votes_9, :votes_8, :votes_7, :votes_6, :votes_5, :votes_4, :votes_3, :votes_2, :votes_1, :allgenders_0age_avg_vote, :allgenders_0age_votes, :allgenders_18age_avg_vote, :allgenders_18age_votes, :allgenders_30age_avg_vote, :allgenders_30age_votes, :allgenders_45age_avg_vote, :allgenders_45age_votes, :males_allages_avg_vote, :males_allages_votes, :males_0age_avg_vote, :males_0age_votes, :males_18age_avg_vote, :males_18age_votes, :males_30age_avg_vote, :males_30age_votes, :males_45age_avg_vote, :males_45age_votes, :females_allages_avg_vote, :females_allages_votes, :females_0age_avg_vote, :females_0age_votes, :females_18age_avg_vote, :females_18age_votes, :females_30age_avg_vote, :females_30age_votes, :females_45age_avg_vote, :females_45age_votes, :top1000_voters_rating, :top1000_voters_votes, :us_voters_rating, :us_voters_votes, :non_us_voters_rating, :non_us_voters_votes])
    |> validate_required([:title_id, :weighted_average_vote, :total_votes, :mean_vote, :median_vote, :votes_10, :votes_9, :votes_8, :votes_7, :votes_6, :votes_5, :votes_4, :votes_3, :votes_2, :votes_1, :allgenders_0age_avg_vote, :allgenders_0age_votes, :allgenders_18age_avg_vote, :allgenders_18age_votes, :allgenders_30age_avg_vote, :allgenders_30age_votes, :allgenders_45age_avg_vote, :allgenders_45age_votes, :males_allages_avg_vote, :males_allages_votes, :males_0age_avg_vote, :males_0age_votes, :males_18age_avg_vote, :males_18age_votes, :males_30age_avg_vote, :males_30age_votes, :males_45age_avg_vote, :males_45age_votes, :females_allages_avg_vote, :females_allages_votes, :females_0age_avg_vote, :females_0age_votes, :females_18age_avg_vote, :females_18age_votes, :females_30age_avg_vote, :females_30age_votes, :females_45age_avg_vote, :females_45age_votes, :top1000_voters_rating, :top1000_voters_votes, :us_voters_rating, :us_voters_votes, :non_us_voters_rating, :non_us_voters_votes])
  end
end
