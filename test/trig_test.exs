defmodule TrigTest do
  use ExUnit.Case
  doctest Trig

  test "greets the world" do
    assert Trig.hello() == :world
  end
end
