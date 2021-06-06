# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :accordionist,
  ecto_repos: [Accordionist.Repo]

# Configures the endpoint
config :accordionist, AccordionistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wd+AEWUk9LVu2LIG1S0nTXsjUQKGF3rrXoeRUixuuTPpP25RtStEvwfvK377ZZtm",
  render_errors: [view: AccordionistWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Accordionist.PubSub,
  live_view: [signing_salt: "VaChTtLB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures Pow Auth Library
config :accordionist, :pow,
  user: Accordionist.Users.User,
  repo: Accordionist.Repo,
  web_module: AccordionistWeb

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :accordionist, Accordionist.Repo, migration_primary_key: [type: :uuid]
