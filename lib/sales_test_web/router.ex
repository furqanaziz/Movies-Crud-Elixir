defmodule SalesTestWeb.Router do
  use SalesTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers

  end

  scope "/api", SalesTestWeb do
    pipe_through :api
  end

  scope "/" do
    pipe_through :browser

    forward "/graphiql",
              Absinthe.Plug.GraphiQL,
              schema: TestGraphql.GraphQL.Schema,
              interface: :playground,
              default_url: "/graphql"
  end
  scope "/" do
    pipe_through :api
    forward "/graphql", Absinthe.Plug, schema: TestGraphql.GraphQL.Schema
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: SalesTestWeb.Telemetry
    end
  end
end
