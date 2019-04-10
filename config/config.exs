# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sample_app,
  ecto_repos: [SampleApp.Repo]

# Configures the endpoint
config :sample_app, SampleAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zaRXu9mnBvHcbYFR3w2aACKvwPdsGUKFCInVWSN9gcIT/8N65qkaRYibEzeo6knH",
  render_errors: [view: SampleAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SampleApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :sample_app, SampleAppWeb.Endpoint,
   live_view: [
     signing_salt: "SECRET_SALT"
   ]
