Code.ensure_loaded?(Hex) and Hex.start

defmodule Coverex.Mixfile do
  use Mix.Project

  def project do
    [app: :coverex,
     version: "0.0.8-dev",
     elixir: "~> 1.0.0-rc1",
     package: package,
     name: "Coverex - Coverage Reports for Elixir",
     source_url: "https://github.com/alfert/coverex",
     homepage_url: "https://github.com/alfert/coverex",
     description: description,
     test_coverage: [tool: Coverex.Task],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: [:logger]]
  end

  # List all dependencies in the format:
  #
  # {:foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.0"},
      {:httpotion, "~> 0.2.0"},
      {:poison, "~> 1.1.0"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.5", only: :dev},
      {:dialyze, "~> 0.1.2", only: :dev}
    ] 
  end

  # Hex Package description
  defp description do
    """
    Coverex is an Elixir Coverage tool used by mix. It provides tables with overviews of 
    module and function coverage data, includings links to annotated source code files. 
    """
  end

  # Hex Package definition
  defp package do
    [contributors: ["Klaus Alfert"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/alfert/coverex"}
    ]
  end

end
