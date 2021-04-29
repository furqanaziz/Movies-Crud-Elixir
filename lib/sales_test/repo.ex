defmodule SalesTest.Repo do
  use Ecto.Repo,
    otp_app: :sales_test,
    adapter: Ecto.Adapters.Postgres

end
