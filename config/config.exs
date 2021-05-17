# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_studio,
  ecto_repos: [LiveViewStudio.Repo]

# Configures the endpoint
config :live_view_studio, LiveViewStudioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oIjecTXn6EH2vADtwPif/p81wuVfIVvWsAT0J55yZMrEtQsv8br1cI+xaY5wqzHA",
  render_errors: [view: LiveViewStudioWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewStudio.PubSub,
  live_view: [signing_salt: "mOtJTpt3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
