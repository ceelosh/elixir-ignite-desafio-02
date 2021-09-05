defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListFilter.hello()
      :world

  """
  def call(list), do: filter(list)

  defp filter([]) do
    nil
  end

  defp filter(list) do
    Enum.flat_map(list,  fn item ->
      case Integer.parse(item) do
        {int, _r} -> [int]

        :error -> []
      end
    end) |> Enum.reject(fn x -> rem(x, 2) == 0 end)
  end
end
