defmodule AutoTweetAppTest do
  use ExUnit.Case
  doctest AutoTweetApp

  test "greets the world" do
    assert AutoTweetApp.hello() == :world
  end

  # test "one plus one" do
  #   assert 1 + 1 == 2
  # end
end
