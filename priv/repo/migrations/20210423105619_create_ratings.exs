defmodule SalesTest.Repo.Migrations.CreateRatings do
  use Ecto.Migration
  alias SalesTest.Movie

  def change do
    create table(:ratings) do
      add :title_id, :string
      add :weighted_average_vote, :string
      add :total_votes, :string
      add :mean_vote, :string
      add :median_vote, :string
      add :votes_10, :string
      add :votes_9, :string
      add :votes_8, :string
      add :votes_7, :string
      add :votes_6, :string
      add :votes_5, :string
      add :votes_4, :string
      add :votes_3, :string
      add :votes_2, :string
      add :votes_1, :string
      add :allgenders_0age_avg_vote, :string
      add :allgenders_0age_votes, :string
      add :allgenders_18age_avg_vote, :string
      add :allgenders_18age_votes, :string
      add :allgenders_30age_avg_vote, :string
      add :allgenders_30age_votes, :string
      add :allgenders_45age_avg_vote, :string
      add :allgenders_45age_votes, :string
      add :males_allages_avg_vote, :string
      add :males_allages_votes, :string
      add :males_0age_avg_vote, :string
      add :males_0age_votes, :string
      add :males_18age_avg_vote, :string
      add :males_18age_votes, :string
      add :males_30age_avg_vote, :string
      add :males_30age_votes, :string
      add :males_45age_avg_vote, :string
      add :males_45age_votes, :string
      add :females_allages_avg_vote, :string
      add :females_allages_votes, :string
      add :females_0age_avg_vote, :string
      add :females_0age_votes, :string
      add :females_18age_avg_vote, :string
      add :females_18age_votes, :string
      add :females_30age_avg_vote, :string
      add :females_30age_votes, :string
      add :females_45age_avg_vote, :string
      add :females_45age_votes, :string
      add :top1000_voters_rating, :string
      add :top1000_voters_votes, :string
      add :us_voters_rating, :string
      add :us_voters_votes, :string
      add :non_us_voters_rating, :string
      add :non_us_voters_votes, :string

      timestamps()
    end

  end
end
