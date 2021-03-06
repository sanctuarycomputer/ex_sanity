defmodule ExSanity.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_sanity,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, ">= 1.1.0"},
      {:httpoison, ">= 1.8.0"},
      {:phoenix_html, ">= 2.14.2"},
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
