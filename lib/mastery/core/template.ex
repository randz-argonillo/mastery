defmodule Mastery.Core.Template do
  defstruct ~w[name category instructions raw compiled generators checker]a

  def new(fields) do
    raw = Keyword.fetch!(fields, :raw)
    compiled = EEx.compile_string(raw)
    struct!(__MODULE__, Keyword.put(fields, :compiled, compiled))
  end
end
