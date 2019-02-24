# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :coinjackpot,
  ecto_repos: [Coinjackpot.Repo]

# Configures the endpoint
config :coinjackpot, CoinjackpotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V5rsLXeU7C8fvmE+UCNLpIbF04tOVVHwR8S+KjV66qUfcbdIwLcIN0N7VlbXqmwA",
  render_errors: [view: CoinjackpotWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Coinjackpot.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
