defmodule AutoTweetAppTest do
  use ExUnit.Case
  doctest AutoTweetApp

  test "greets the world" do
    assert AutoTweetApp.hello() == :world
  end
end
