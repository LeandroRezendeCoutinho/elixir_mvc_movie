# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mvc_movie,
  ecto_repos: [MvcMovie.Repo]

# Configures the endpoint
config :mvc_movie, MvcMovieWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ConXt8/HdcxjwJSN5jXzaLr3IAdiTUuNgN6XSv0fslz4VjiYzTfcs8su9yWcRsJL",
  render_errors: [view: MvcMovieWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MvcMovie.PubSub,
  live_view: [signing_salt: "lAJ9SpBu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
