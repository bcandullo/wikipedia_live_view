# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :wikipedia_live_view, WikipediaLiveViewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KaRZj1GecVQ2/ZMDa3tj8MTox/6k+l3uEhL5p8ayMLsFUwVwizHJ6PHh3sBKIVib",
  render_errors: [view: WikipediaLiveViewWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WikipediaLiveView.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "1iKZqu5YRWH7jUcb64ANQBQtyfvowftU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
