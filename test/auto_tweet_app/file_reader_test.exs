defmodule AutoTweetApp.FileReaderTest do
  use ExUnit.Case
  import AutoTweetApp.FileReader
  doctest AutoTweetApp

  test "Passing a file should return a string" do
    filepath = Path.join("#{:code.priv_dir(:auto_tweet_app)}", "sample.txt")
    str = get_string_to_tweet(filepath)

    assert str != nil
  end

  test "Will not return a string longer than 140" do
    filepath = Path.join("#{:code.priv_dir(:auto_tweet_app)}", "test/too_long_sample.txt")
    str = get_string_to_tweet(filepath)

    assert str == "normal one"
  end

  test "An empty string should return an empty string" do
    str = pick_str("")

    assert str == ""
  end
end
