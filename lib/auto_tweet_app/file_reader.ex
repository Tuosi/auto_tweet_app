defmodule AutoTweetApp.FileReader do
  def get_string_to_tweet(filepath) do
    filepath
    |> File.read!()
    |> pick_str()
  end

  def pick_str(str) do
    str
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&(String.length(&1) <= 140))
    |> Enum.random()
  end
end
