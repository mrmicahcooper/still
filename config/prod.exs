import Config

config :still,
  dev_layout: false,
  url_fingerprinting: true,
  base_url: "https://subvisual.github.io/still/",
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  pass_through_copy: [~r/.*jpe?g/, "subvisual.png"]