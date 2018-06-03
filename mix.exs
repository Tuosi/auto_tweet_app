defmodule AutoTweetApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :auto_tweet_app,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum, :extwitter],
      mod: {AutoTweetApp.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.9.2"},
      {:quantum, "~> 2.2"},
      {:extwitter, "~> 0.9.3"},
      {:oauth, github: "tim/erlang-oauth"},
      {:mock, "~> 0.3.1"}
    ]
  end
end
