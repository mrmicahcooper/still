defmodule Still.Preprocessor.Slime.Renderer do
  @moduledoc """
  `Still.Preprocessor.Renderer` implementation for Slime files.
  """

  use Still.Preprocessor.Renderer,
    extensions: [".slime"],
    preprocessor: Still.Preprocessor.Slime

  @impl true
  def compile(content, _metadata) do
    info = [file: __ENV__.file, line: __ENV__.line]

    Slime.Renderer.precompile(content)
    |> EEx.compile_string(info)
  end

  @impl true
  def ast do
    quote do
      require EEx
      require Slime
    end
  end
end
