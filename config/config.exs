# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :yateleyschoolmapvr,
  ecto_repos: [Yateleyschoolmapvr.Repo]

# Configures the endpoint
config :yateleyschoolmapvr, YateleyschoolmapvrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VBePHRV0AgeQvnJpCLD3FDy9I1Raj69aVw9HhjC6onJK2HCKucmpnu4Klujg+cTJ",
  render_errors: [view: YateleyschoolmapvrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Yateleyschoolmapvr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
