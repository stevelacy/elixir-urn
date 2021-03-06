defmodule Urn.Mixfile do
  use Mix.Project

  def project do
    [app: :urn,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     name: "Urn",
     description: "Uniform Resource Name (URN) parsing and validation in Elixir",
     source_url: "https://github.com/stevelacy/elixir-urn",
     package: [licenses: ["MIT"],
       maintainers: ["Steve Lacy"],
       links: %{"Github" => "https://github.com/stevelacy/elixir-urn"}],
     homepage_url: "https://github.com/stevelacy/urn",
     docs: [main: "readme",
       extras: ["README.md"]]]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, "~> 0.15", only: :dev, runtime: false}]
  end
end
