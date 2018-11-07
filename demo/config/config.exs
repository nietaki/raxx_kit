use Mix.Config

# config :exsync,
  # extra_extensions: [".js", ".css"]

config :demo,
  ecto_repos: [Demo.Repo]

config :demo, Demo.Repo,
  username: "nietaki",
  password: "",
  database: "demo",
  hostname: "localhost",
  pool_size: 10
