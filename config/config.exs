# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sales_test,
  ecto_repos: [SalesTest.Repo]

# Configures the endpoint
config :sales_test, SalesTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B0VDnx7qZGAUFq5lSh9q0wgyTqMJM/AVU+6vuvlF0q6MUc4gEeWep0gjsWeHMEPJ",
  render_errors: [view: SalesTestWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: SalesTest.PubSub,
  live_view: [signing_salt: "m00XLqcZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
