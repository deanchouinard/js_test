# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :js_test,
  ecto_repos: [JsTest.Repo]

# Configures the endpoint
config :js_test, JsTest.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "k29Zk8UYyEJXacMsKAwd44+1t1P55ZV5KwWAZPWbWvibpY7galdQYVpIsZKp5Ist",
  render_errors: [view: JsTest.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JsTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
