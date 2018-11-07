defmodule Demo.Mixfile do
  use Mix.Project

  def project do
    [app: :demo,
     version: "0.1.0",
     elixir: "~> 1.7.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
      mod: {Demo.Application, []}]
  end

  defp deps do
    [
      {:ace, "~> 0.18.0"},
      {:raxx_static, "~> 0.7.0"},
      {:exsync, "~> 0.2.3", only: :dev},
      {:postgrex, ">= 0.0.0"},
      {:ecto_sql, "~> 3.0.0"}
    ]
  end
end
