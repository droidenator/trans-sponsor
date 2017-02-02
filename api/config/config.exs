# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :trans_sponsor, TransSponsor.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "4JMOAnIlu37jSdw/YMJilOk1MHbKS2ohBc4iHUxdA3w1jLl949yqfCZE2ywV/vVs",
  render_errors: [accepts: ~w(json)],
  pubsub: [name: TransSponsor.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :addict,
  secret_key: "24326224313224522f643546594b68462e796f796d774644374d534565",
  extra_validation: fn ({valid, errors}, user_params) -> {valid, errors} end, # define extra validation here
  user_schema: TransSponsor.User,
  repo: TransSponsor.Repo
  # TODO: Setup Mailgun
  # from_email: "no-reply@example.com", # CHANGE THIS
  # mailgun_domain: "",
  # mailgun_key: "",
  # mail_service: :mailgun
