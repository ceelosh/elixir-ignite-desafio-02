defmodule ListFilterTest do
  use ExUnit.Case

  test "identificando impar" do
    list = ["um", "2", "3"]
    list2 = ["1", "2", "3"]
    assert ListFilter.call(list) == [3]
    assert ListFilter.call(list2) == [1,3]
  end
end
